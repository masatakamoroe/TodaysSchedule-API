module Resources
  module V1
    class User < Grape::API
      resource :users do
        # http://localhost:3000/api/v1/users
        desc 'user list'
        get do
        @users = ::User.all
          present @users, with: Entities::V1::UserEntity
        end

        # http://localhost:3000/api/v1/users/{:id}
        desc 'user'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'user id'
        end
        get '/:id' do
          @users = ::User.all
          @id = @users.find(params[:id])
          present @users.find(params[:id]), with: Entities::V1::UserEntity
          
        end
        end
      end
    end
  end
