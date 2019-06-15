class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :activate, :destroy]
  
  def index
    @students = Student.all
  end

  def show
  end

  def edit 
     @submit_text = "Fix This Student"
  end 

  def update 
      if @student.valid?
      @student.update(student_params)
      redirect_to student_path(@student) 
    else
      render :edit
    end
  end 

  def activate 
    @student.active = !@student.active
    @student.save 
    redirect_to student_path(@student.id)
  end  

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:id, :first_name, :last_name, :active)
    end 

end