class AnnouncementsController < ApplicationController

  def index
    announcements = Announcement.all
    render json: announcements.to_json(
      :except => [:updated_at],
      :include => {
        :initiator => {
          :only => [:first_name, :last_name]
        },
        :messages => {
          :only => [:id, :read]
        }
      }
    )
  end

  def show
    announcement = Announcement.find_by(id: params[:id])

    render json: announcement.to_json(
      :include => {
        :initiator => {
          :only => [:id, :username, :first_name, :last_name, :picture]
        },
        :messages => {
          :include => {
            :sender => {
              :only => [:id, :username, :first_name, :last_name, :picture]
            }
          }
        }
      }
    )
  end

  def create

    kid = Student.find(params[:student_id])
    parents = kid.carers


    parents.each do |parent|

      new_announcement = Announcement.create(initiator_id: params[:initiator_id], receiver_id: parent.id, subject: params[:subject], body: params[:body])
      RobMailer.announcement(parent.email, params[:subject], params[:body]).deliver_now

      message = "A New Message From School: #{params[:body]}"
      TwilioTextMessenger.new(message).call

    end


    render json: {
      message: "messages sent",
    }

  end


  def receiver

    user = User.find(params[:id])
    render json: user.to_json(
      :only => [:username],
      :include => {
        :receiver_relationships => {
          :only => [:id, :initiator_id, :subject, :body, :created_at],
          :include => {
            :initiator => {
              :only => [:first_name, :last_name, :picture, :educator_type]
            },
            :messages => {
              :only => [:id]
            }
          }
        },
        :initiator_relationships => {
          :only => [:id, :receiver_id, :subject, :body, :created_at],
          :include => {
            :receiver => {
              :only => [:first_name, :last_name, :picture, :educator_type]
            },
            :messages => {
              :only => [:id]
            }
          }
        }
      }
    )

  end

  private
    def announcement_params
      params.require(:announcement).permit(:initiator_id, :receiver_id, :subject, :body)
    end
end
