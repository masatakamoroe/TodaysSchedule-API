module Resources
  module V1
    class Calendars < Grape::API
      auth :grape_devise_token_auth, resource_class: :user
      helpers GrapeDeviseTokenAuth::AuthHelpers
      resource :calendars do
        # http://localhost:3000/api/v1/calendars
        desc 'calendar list'
        get do
          authenticate_user!
          present current_user.calendars, with: Entities::V1::CalendarEntity
        end

        desc "create new calendar"
        params do
          requires :title, type: String
          requires :date, type: DateTime
        end

        post do
          authenticate_user!
          current_user.calendars.create({
            title: params[:title],
            date: params[:date],
            })
        end
      end
    end
  end
end
