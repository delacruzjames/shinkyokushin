class PagesController < ApplicationController

  before_filter :authenticate_user!, :except => [:index]

  def index
    @dojos = Dojo.all
    if current_user.nil?
      # binding.pry
    else
      flash[:notice] = flash[:notice]
      flash[:alert] = flash[:alert]
      redirect_to dashboard_path
    end
  end

  def instructor_dashboard

    if current_user.is_instructor?
      @dojos = current_user.dojos.all
      render "instructor/dashboard"
    else
      render "student/dashboard"
    end
  end
end
