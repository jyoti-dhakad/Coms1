class StudentsController < ApplicationController
  def index
    @course = Course.all
  end

  def show 
    @student = Student.find_by(id: params[:id])
  end

  def new
  end
end
