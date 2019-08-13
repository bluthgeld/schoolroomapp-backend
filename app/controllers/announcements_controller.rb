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

    new_announcement = Announcement.create(announcement_params)
    render json: new_announcement.to_json(
      :include => {
        :initiator => {
          :only => [:id, :username, :first_name, :last_name, :picture]
        }
      }
    )

  end

  private
    def announcement_params
      params.require(:announcement).permit(:initiator_id, :receiver_id, :subject, :body)
    end
end
