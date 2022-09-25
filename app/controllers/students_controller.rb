class StudentsController < ApplicationController

    def index
		@students = Student.all
	end

    def new
        @student = Student.new
    end
  
    def create
        @student = Student.new(student_params)
        if @student.save
        redirect_to student_path(@student)
       else
        render :new
       end
    end
  
    def show
        @student = Student.find(params[:id])
    end
  
     
    def edit
        @student = Student.find(params[:id])
    end
  
    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
        redirect_to student_path(@student)
        else
            render :edit
        end
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def student_params
        params.require(:student).permit(:id, :student_code, :student_name, :student_date_of_birth, :student_email, :student_homeaddress, :student_mobile_number, :student_gender, :student_parent_name, :enrolled_date, :classroom_id, :tuitionfee_id)
    end

    def classroom_params
        params.require(:classroom).permit(:classroom_id)
    end

    def tuitionfee_params
        params.require(:tuitionfee).permit(:tuitionfee_id)
    end

end
