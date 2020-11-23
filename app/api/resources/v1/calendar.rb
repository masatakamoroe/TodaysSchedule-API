module Resources
  module V1
    class Calendar < Grape::API
      auth :grape_devise_token_auth, resource_class: :user
      helpers GrapeDeviseTokenAuth::AuthHelpers
      helpers do
        def authenticate_error!
          # 認証が失敗したときのエラー
          h = {'Access-Control-Allow-Origin' => "*",
            'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")}
            error!('You need to log in to use the app.', 401, h)
          end
          def authenticate_user!
            # header から認証に必要な情報を取得

            uid = request.headers['Uid']
            token = request.headers['Access-Token']
            client = request.headers['Client']
            @user = User.find_by_uid(uid)
            # 認証に失敗したらエラ-
            unless @user && @user.valid_token?(token, client)
              authenticate_error!
            end
          end
        end
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
