class DojosController < ApplicationController

	def show
		@dojo = Dojo.find(params[:id])
		if request.path != dojo_path(@dojo)
    		redirect_to @dojo, status: :moved_permanently
  		end
	end
end
