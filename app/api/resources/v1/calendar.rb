module Resources
  module V1
    class Calendar < Grape::API
      resource :calendars do
        # http://localhost:3000/api/v1/calendars
        desc 'calendar list'
        get do
          authenticate_user!
          @calendars = Calendar.all
          present @calendars, with: Entities::V1::CalendarEntity
          end
        end
      end
    end
  end
