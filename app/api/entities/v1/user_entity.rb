module Entities
  module V1
    class UserEntity < RootEntity
      # id, name, email, のみ表示する
      expose :id, :name, :email
    end
  end
end
