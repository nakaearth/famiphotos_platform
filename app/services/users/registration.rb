module Users
  class Registration
    def regist(auth)
      ActiveRecord::Base.transaction do
        @login_user = FamiphotosPlatform::User.find_or_create_by(name: auth[:info][:name]) do |user|
          user.name  = auth[:info][:name]
          user.email = auth[:info][:email]
          user.provider = auth[:provider]
          user.uid      = auth[:uid]
          user.nickname = auth[:info][:nickname]
          user.image_url  = auth[:info][:image]

          unless auth[:credentials].blank?
            user.access_token = auth[:credentials][:token]
            user.secret_token = auth[:credentials][:secret]
          end
        end

        FamiphotosPlatform::User.with_writable { @login_user.save! }
        @login_user
      end
      # rescue Faraday::TimeoutError => e
      #   puts 'ELへの登録失敗'
      #   puts e.message
    end
  end
end
