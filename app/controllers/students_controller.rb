class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to action: "show", id: student.id
  end

end
