class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  before_action :set_category
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def set_category
    @categories = Category.all
  end

end
