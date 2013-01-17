class ApplicationController < ActionController::Base
  before_filter :set_session

  protect_from_forgery

  def index ; render text: "", layout: true ; end

private

  def set_session
    @user = current_user || User.new(params[:user])
  end

end
