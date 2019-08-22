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

  def show

    message = Message.find_by(id: params[:id])

    render json: message.to_json(

      :include => {
        :sender => {
          :only => [:id, :username, :first_name, :last_name, :picture]
        }
      }
    )

  end

  def create

    new_message = Message.create(message_params)
    render json: new_message.to_json(
      :include => {
        :sender => {
          :only => [:id, :username, :first_name, :last_name, :picture]
        }
      }
    )

  end

  private
    def message_params
      params.require(:message).permit(:announcement_id, :sender_id, :body)
    end

end
