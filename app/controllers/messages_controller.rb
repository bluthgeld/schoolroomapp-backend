class MessagesController < ApplicationController

  def index

    render json: Message.all.to_json(
      :include => {
        :sender => {
          :only => [:id, :username, :first_name, :last_name, :picture]
        }
      }
    )

  end



end
