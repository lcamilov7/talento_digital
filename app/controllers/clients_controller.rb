class ClientsController < ApplicationController
  def index
    if params[:query].present?
      @clients = Client.global_search
    else
      @clients = Client.all
    end
  end
end
