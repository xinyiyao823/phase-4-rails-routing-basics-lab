class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end

    def grades 
        ordered_students = Student.all.order(grade: :desc)
        render json: ordered_students
    end

    def highest_grade
        highest_grade_student = Student.all.order(grade: :desc).first
        render json: highest_grade_student
    end
end
