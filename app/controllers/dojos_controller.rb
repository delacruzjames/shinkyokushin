class DojosController < ApplicationController

	def show
		@dojo = Dojo.find(params[:id])
	end
end
