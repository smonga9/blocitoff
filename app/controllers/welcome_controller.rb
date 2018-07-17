class WelcomeController < ApplicationController
  def index

    if current_user.admin?
      current_user.update_attribute :admin, true
    end

    if user_signed_in?
      redirect_to_users_show_path
    end
  end

  def about
  end
end
