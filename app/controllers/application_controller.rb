class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def ensure_logged_in
    unless current_user
      flash[:alert] = "You need to log in!"
      redirect_to new_sessions_url
    end
  end

  def ensure_review_owner
    unless current_user == @review.user
      flash[:alert] = "You can only edit your own reviews"
    end
  end

end
