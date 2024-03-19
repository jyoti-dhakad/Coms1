class StudentsController < ApplicationController
  def index
    
    @course = Course.all
  end

  def show 
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def download
    pdf = Prawn::Document.new
    pdf.text 'hello world!!'

    send_data(pdf.render,
    filename: 'hello.pdf',
    type: 'application/pdf')
  end
end
