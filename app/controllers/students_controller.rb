class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
    if @student.active == true
      @e = "active"
    else
      @e = "inactive"
    end
    render "show"
  end

  def activate
    set_student
  
    if @student.active == false
      @student.active = true
      @student.save
      redirect_to action: "show"
    else
      @student.active = false
      @student.save
      redirect_to action: "show"
    end
  end
  

  private

    def set_student
      @student = Student.find(params[:id])
    end
end