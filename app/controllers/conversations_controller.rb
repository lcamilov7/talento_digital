class ConversationsController < ApplicationController
  before_action :set_client, only: %i[index show]
end
