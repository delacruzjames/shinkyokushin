class InstructorsController < ApplicationController
	def show
		@instructor = Instructor.find(params[:id])
		if request.path != instructor_path(@instructor)
    		redirect_to @instructor, status: :moved_permanently
  	end
	end

	def index
		@instructors = Instructor.all
	end
end
