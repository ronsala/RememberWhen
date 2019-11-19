# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end
  # todo: rm?
  # def facebook
  #   @user = User.from_omniauth(request.env["omniauth.auth"])
  #   if @user.persisted?
  #     sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
  #     set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end

  ### ! MEG NOTE ###
  # Your method below looks pretty good. The only thing I'd try to clean up is the code in the 'truthy' part of the if statement. Take a look at the code from from the Google OAuth docs (found here: https://github.com/zquestz/omniauth-google-oauth2#devise).
  # I also commented out that redirect at the end as it isn't needed. The omniauth either works or it doesn't and should respond accordingly inside the if statement.

  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
# binding.pry
    if @user.persisted?
      sign_in @user, :event => :authentication
      set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
    else
      session["devise.google_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra info as it can overflow some session stores
      # Add redirect to new user registration with an error message that they couldn't sign in via Google OAuth because they don't have an account yet
    end
    # redirect_to @user
  end
  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
