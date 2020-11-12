module Resources
  module V1
    class Calendar < Grape::API
      resource :calendars do
        # http://localhost:3000/api/v1/calendars
        desc 'calendar list'
        get do
          @calendars = ::Calendar.all
          present @calendars, with: Entities::V1::CalendarEntity

        end

        # http://localhost:3000/api/v1/calendars/{:id}
        desc 'calendar'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'calendar id'
        end
        get '/:id' do
          @calendars = ::Calendar.all
          @id = @calendars.find(params[:id])
          present @calendars.find(params[:id]), with: Entities::V1::CalendarEntity

          desc 'GET /api/v1/calendars'
          get 'calendars' do
            authenticate_user!
            {
              message: 'test',
              current_user_uid: current_user.uid,
              authenticated?: authenticated?,
            }
          end
        end
      end
    end
  end
end
