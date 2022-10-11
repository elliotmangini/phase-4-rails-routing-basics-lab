class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.order("grade DESC")
        render json: students_by_grade
    end
end
