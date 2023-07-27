class StudentsController < ApplicationController

  def index
    if params[:name]
      name = params[:name]
      students = Student.where('upper(first_name) = ? OR upper(last_name) = ?', name.upcase, name.upcase)
    else
      students = Student.all
    end
    render json: students
    
  #   if params.include?(:name)
  #     name = params[:name].capitalize()
  #     students = Student.all.where('first_name = ? OR last_name = ?', name, name)
  # else
  #   students = Student.all
  # end
  # render json: students
end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
