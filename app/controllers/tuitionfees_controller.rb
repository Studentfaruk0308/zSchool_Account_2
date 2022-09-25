class TuitionfeesController < ApplicationController

	def index
		@tuitionfees = Tuitionfee.all
	end

    def new
        @tuitionfee = Tuitionfee.new
    end
  
    def create
        @tuitionfee = Tuitionfee.new(tuitionfee_params)
        if @tuitionfee.save
        redirect_to tuitionfee_path(@tuitionfee)
       else
        render :new
       end
    end
  
    def show
        @tuitionfee = Tuitionfee.find(params[:id])
    end
  
     
    def edit
        @tuitionfee = Tuitionfee.find(params[:id])
    end
  
    def update
        @tuitionfee = Tuitionfee.find(params[:id])
        if @tuitionfee.update(tuitionfee_params)
        redirect_to tuitionfee_path(@tuitionfee)
        else
            render :edit
        end
    end

    def destroy
        Tuitionfee.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def tuitionfee_params
        params.require(:tuitionfee).permit(:id,:tuitionfee_code, :term_1_fee, :term_2_fee, :term_3_fee, :term_4_fee, :full_year_fee)
    end

end
