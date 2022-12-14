class UsersController < ApplicationController

def index
    @users = User.all
end

def new
    @user = User.new
end

def create
    @user = User.new(user_params)
    if @user.save
    redirect_to user_path(@user)
   else
    render :new
   end
end

def show
    @user = User.find(params[:id])
end

 
def edit
    @user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user)
    else
        render :edit
    end
end

def destroy
    User.find(params[:id]).destroy
    redirect_to action: "index"
end

private

def user_params
    params.require(:user).permit(:id, :uid, :name, :email, :provider)
end  

end