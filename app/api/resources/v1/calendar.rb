module Resources
  module V1
    class Calendars < Grape::API
      resource :Calendars do
        # http://localhost:3000/api/v1/users
        desc 'calendar list'
        get do
          present Calendar.all
        end

        # http://localhost:3000/api/v1/calendars/{:id}
        desc 'calendar'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'calendar id'
        end
        get ':id' do
          present Calendar.find(params[:id])
        end
      end
    end
  end
end
