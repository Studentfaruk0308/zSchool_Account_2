class SalarypaymentsController < ApplicationController

    def index
		@salarypayments = Salarypayment.all
	end

    def new
        @salarypayment = Salarypayment.new
    end
  
    def create
        @salarypayment = Salarypayment.new(salarypayment_params)
        if @salarypayment.save
        redirect_to salarypayment_path(@salarypayment)
       else
        render :new
       end
    end
  
    def show
        @salarypayment = Salarypayment.find(params[:id])
    end
  
     
    def edit
        @salarypayment = Salarypayment.find(params[:id])
    end
  
    def update
        @salarypayment = Salarypayment.find(params[:id])
        if @salarypayment.update(salarypayment_params)
        redirect_to salarypayment_path(@salarypayment)
        else
            render :edit
        end
    end

    def destroy
        Salarypayment.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def salarypayment_params
        params.require(:salarypayment).permit(:salarypayment_code, :date_of_payment, :amount_of_payment, :teacher_id)
    end

end
