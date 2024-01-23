class ClientsController < ApplicationController
  before_action :set_client, only: %i[destroy show]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
    @interests = Interest.all
  end

  def create
    @client = Client.new(client_params)
    @client.user_id = current_user.id
    if @client.save
      redirect_to clients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @client.destroy
    redirect_to client_path, status: :see_other
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :email, :phone, interest_ids: [])
  end
end
