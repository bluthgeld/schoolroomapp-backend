class ConversationsController < ApplicationController

  def index
    conversations = Conversation.all

    render json: conversations.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :messages => {
          :except => [:created_at, :updated_at]
        }
      }
    )

  end



end
