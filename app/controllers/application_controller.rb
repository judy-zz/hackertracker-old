class ApplicationController < ActionController::Base
  before_filter :set_session
  before_filter :authenticate_user!, :only => [:sekrit]

  protect_from_forgery

  def index ; render text: "PUBLIK", layout: true ; end
  def sekrit ; render text: "SEKRIT", layout: true ; end

private

  def set_session
    @user = current_user || User.new(params[:user])
  end

end
