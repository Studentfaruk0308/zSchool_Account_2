class ClassroomsController < ApplicationController

    def index
		@classroos = Classroom.all
	end

    def new
        @classroom = Classroom.new
    end
  
    def create
        @classroom = Classroom.new(classroom_params)
        if @classroom.save
        redirect_to classroom_path(@classroom)
       else
        render :new
       end
    end
  
    def show
        @salary = Classroom.find(params[:id])
    end
  
     
    def edit
        @classroom = Classroom.find(params[:id])
    end
  
    def update
        @classroom = Classroom.find(params[:id])
        if @classroom.update(classroom_params)
        redirect_to classroom_path(@classroom)
        else
            render :edit
        end
    end

    def destroy
        Classroom.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def classroom_params
        params.require(:classroom).permit(:classroom_code, :classroom_name, :classroom_gender, :teacher_id)
    end

end