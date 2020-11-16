module Resources
  module V1
    class Calendar < Grape::API
      before_action :authenticate_user!
      resource :calendars do
        # http://localhost:3000/api/v1/calendars
        desc 'calendar list'
        get do
          @current_user = current_user.id
          @calendars = @current_user.calendars.all
          present @calendars, with: Entities::V1::CalendarEntity
          end
        end
      end
    end
  end
