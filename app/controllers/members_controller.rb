class MembersController < ApplicationController
  def index
  	@members = Member.all
  	@approved_members = Member.approved_member
  end

  def show
  	@member = Member.find(params[:id])
  end
end
