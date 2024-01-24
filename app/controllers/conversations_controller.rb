class ConversationsController < ApplicationController
  before_action :set_client, only: %i[create]

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.client = @client
    @conversation.user = current_user
    if @conversation.save
      redirect_to client_path(@client)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def conversation_params
    params.require(:conversation).permit(:content)
  end
end
