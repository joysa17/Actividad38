class DetailsController < ApplicationController
	before_action :authenticate_user!

  def create
  	@jobs = Homework.find(params[:homework_id])
  	@detail = Detail.new(user: current_user)
  	if @jobs.save
  	  redirect_to homework_index_path, alert: 'La tarea esta agregada'
  	 else
  	  redirect_to homework_index_path,  notice: 'La tarea no esta agregada'
  	end
  end

  def index
  @details = current_user.details
  end
end
