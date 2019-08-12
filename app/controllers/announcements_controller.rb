class AnnouncementsController < ApplicationController

  def index
    announcements = Announcement.all
    render json: announcements.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :messages => {
          :except => [:created_at, :updated_at]
        }
      }
    )
  end

  def show
    announcement = Announcement.find_by(id: params[:id])

    render json: announcements.to_json(
      :include => {
        :messages
      }
    )
  end


end
