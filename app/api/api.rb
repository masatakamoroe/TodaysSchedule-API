class API < Grape::API
  prefix 'api'
end
  mount Resources::V1::Root
