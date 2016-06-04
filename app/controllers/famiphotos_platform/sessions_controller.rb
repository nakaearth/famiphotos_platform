module FamiphotosPlatform
  class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :login?, only: [:new, :create, :destroy, :oauth_failure]

    def new
      redirect_to '/auth/' + (Rails.env.production? ? params[:provider] : 'developer')
    end

    def create
      auth  = request.env['omniauth.auth']
      user = FamiphotosPlatform::User.find_by(provider: auth[:provider], email: auth[:info][:name]) || FamiphotosPlatform::User.create_account(auth)

      session[:encrypted_user_id] = Base64.encode64(user.id.to_s)
      logger.info user.try(:name)
      flash[:notice] = 'login successfully.'
      redirect_to controller: 'albums', action: 'index'
    end

    def destroy
      reset_session
      redirect_to controller: 'top', action: 'index', notice: 'login successfully.'
    end

    def oauth_failure
      flash[:notice] = "キャンセルしました。"
      redirect_to "/"
    end
  end
end
