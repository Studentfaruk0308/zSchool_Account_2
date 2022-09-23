class SalariesController < ApplicationController

    def index
		@salaries = Salary.all
	end

    def new
        @salary = Salary.new
    end
  
    def create
        @salary = Salary.new(salary_params)
        if @salary.save
        redirect_to salary_path(@salary)
       else
        render :new
       end
    end
  
    def show
        @salary = Salary.find(params[:id])
    end
  
     
    def edit
        @salary = Salary.find(params[:id])
    end
  
    def update
        @salary = Salary.find(params[:id])
        if @salary.update(salary_params)
        redirect_to salary_path(@salary)
        else
            render :edit
        end
    end

    def destroy
        Salary.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def salary_params
        params.require(:salary).permit(:salary_code, :fortnightly_salary)
    end  

end
