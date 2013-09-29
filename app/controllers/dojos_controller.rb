class DojosController < ApplicationController

	def index
		@dojos = Dojo.all
	end

	def show
		@dojo = Dojo.find(params[:id])
		if request.path != dojo_path(@dojo)
    		redirect_to @dojo, status: :moved_permanently
  	end
	end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new params[:dojo]
    @dojo.save
    redirect_to dashboard_path, notice: 'Dojo created successfully'
  end

end
