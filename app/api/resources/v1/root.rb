module Resources
  module V1
    class Root < Grape::API
      version 'v1'
      format :json
      content_type :json, 'application/json'

      mount Resources::V1::User
      mount Resources::V1::Calendar
    end
  end
end
