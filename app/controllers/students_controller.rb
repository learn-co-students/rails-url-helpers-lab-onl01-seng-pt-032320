class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def activate
    @student = Student.find_by_id(params[:id])
      if @student.active == false 
        @student.active = true
      else
        @student.active = false
      end
  end 

  def to_s
    self.first_name + " " + self.last_name 
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end