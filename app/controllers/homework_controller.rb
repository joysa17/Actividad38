class HomeworkController < ApplicationController
  before_action :authenticate_user!
  def index
  	@homework = Homework.all
  end
end
