module Entities
  module V1
    class CalendarEntity < Grape::Entity
      # id, title, user_idのみ表示する
      expose :title, :date, :user_id
    end
  end
end
