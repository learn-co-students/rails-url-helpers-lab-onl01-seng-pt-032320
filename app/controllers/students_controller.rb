class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def activate
    @student = set_student 
    @student.update(:active=>!@student.active)
    # redirect_to "/students/#{@student.id}"
    redirect_to student_path(@student.id) #path helper
    #byebug 
  end

  def index
    @students = Student.all
    
  end

  def show
    #byebug
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end