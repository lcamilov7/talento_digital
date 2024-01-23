class ConversationsController < ApplicationController
  before_action :set_client, only: %i[index]
  
  def index
    @conversations = Conversation.where(client_id: @client.id)
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end
end
