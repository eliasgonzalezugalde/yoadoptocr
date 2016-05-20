class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locations, only: [:edit, :update, :new]
  before_action :validate_user



  def set_locations
    @locations = Location.all
  end

  private

  def validate_user
    if defined?(session[:logueado]) and session[:logueado]

    else
      puts "-"
      redirect_to "/login"
    end
  end
end
