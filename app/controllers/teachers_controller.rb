class TeachersController < ApplicationController

    def index
		@teachers = Teacher.all
	end

    def new
        @teacher = Teacher.new
    end
  
    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save
        redirect_to teacher_path(@teacher)
       else
        render :new
       end
    end
  
    def show
        @teacher = Teacher.find(params[:id])
    end
  
     
    def edit
        @teacher = Teacher.find(params[:id])
    end
  
    def update
        @teacher = Teacher.find(params[:id])
        if @teacher.update(teacher_params)
        redirect_to teacher_path(@teacher)
        else
            render :edit
        end
    end

    def destroy
        Teacher.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def teacher_params
        params.require(:teacher).permit(:id, :teacher_code, :teacher_name, :teacher_email, :teacher_homeaddress, :teacher_mobile_number, :teacher_gender, :engagement_date, :teacher_bankdetails, :salary_id)
    end

    def salary_params
        params.require(:salary).permit(:salary_id)
    end  

end
