module Resources
  module V1
    class Calendar < Grape::API
      auth :grape_devise_token_auth, resource_class: :user
      helpers GrapeDeviseTokenAuth::AuthHelpers
      resource :calendars do
        # http://localhost:3000/api/v1/calendars
        desc 'calendar list'
        get do
          authenticate_user!
          present current_user.calendars, with: Entities::V1::CalendarEntity
        end
      end
    end
  end
end
