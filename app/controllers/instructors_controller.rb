class InstructorsController < ApplicationController
  def index
    @course = Course.all
  end

  

  def show
    @ins = Instructor.find_by(id: params[:id])
  end
end
