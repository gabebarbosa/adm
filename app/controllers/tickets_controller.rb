class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)

    @ticket.user_id = current_user.id

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket criado com sucesso.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket atualizao com sucesso.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # def destroy
  #   @ticket.destroy
  #   respond_to do |format|
  #     format.html { redirect_to tickets_url, notice: 'Ticket apagado com sucesso.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:description, :customer_id, :ticket_type_id, :user_id, :recipient_id)
    end
end
