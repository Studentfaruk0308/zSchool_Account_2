class FeepaymentsController < ApplicationController

    def index
		@feepayments = Feepayment.all
	end

    def new
        @feepayment = Feepayment.new
    end
  
    def create
        @feepayment = Feepayment.new(feepayment_params)
        if @feepayment.save
        redirect_to feepayment_path(@feepayment)
       else
        render :new
       end
    end
  
    def show
        @feepayment = Feepayment.find(params[:id])
    end
  
     
    def edit
        @feepayment = Feepayment.find(params[:id])
    end
  
    def update
        @feepayment = Feepayment.find(params[:id])
        if @feepayment.update(feepayment_params)
        redirect_to feepayment_path(@feepayment)
        else
            render :edit
        end
    end

    def destroy
        Feepayment.find(params[:id]).destroy
        redirect_to action: "index"
    end
  
    private
  
    def feepayment_params
        params.require(:feepayment).permit(:feepayment_code, :date_of_payment, :amount_of_payment, :student_id)
    end

end
