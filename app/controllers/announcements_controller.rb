class AnnouncementsController < ApplicationController

  def index
    announcements = Announcement.all
    render json: announcements.to_json(
      :except => [:created_at, :updated_at],
      :include => {
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
end
