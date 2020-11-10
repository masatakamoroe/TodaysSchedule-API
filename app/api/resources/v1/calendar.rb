module Resources
  module V1
    class Calendar < Grape::API
      resource :calendars do
        # http://localhost:3000/api/v1/calendars
        desc 'calendar list'
        get do
        @calendars = ::Carendar.all
          present @Calendars
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
