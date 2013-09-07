class PagesController < ApplicationController
  #before_filter :authenticate_user!
  def index
  	@dojos = Dojo.all
  	# @instructors = Instructor.all
  end
end
