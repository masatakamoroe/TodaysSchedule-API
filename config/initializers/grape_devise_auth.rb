class API < Grape::API
  GrapeDeviseTokenAuth.setup! do |config|
    config.authenticate_all = false
  end
end
