class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cart, :set_categories

  helper_method :current_user

  def set_cart
    @cart = Cart.new(session[:cart])
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def set_categories
    @categories = Category.all
  end

end
