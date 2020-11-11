module Entities
  module V1
    class CalendarEntity < RootEntity
      # id, title, user_idのみ表示する
      expose :id, :title, :date, :user_id
    end
  end
end
