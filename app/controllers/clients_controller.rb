class ClientsController < ApplicationController
  before_action :set_client, only: %i[destroy]
  def index
    @clients = Client.all
  end

  def destroy
    raise
    @client.destroy
    redirect_to client_path, status: :see_other
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end
end
