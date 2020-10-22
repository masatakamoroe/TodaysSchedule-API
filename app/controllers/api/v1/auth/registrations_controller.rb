class Api::V1::Auth::RegistrationsController < ApplicationController
  private
      def sign_up_params
       params.require(:user).permit(:username, :email, :password, :password_confirmation )
       end
      def account_update_params
        params.permit(:username, :email)
      end
    end
