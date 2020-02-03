class UsersController < ApplicationController
  before_action :authenticate,:except => [:new,:create, :destroy]
  def new
    @user = User.new
  end

  def show
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password,
                                    :password_confirmation, :acceptance_of_terms)
    end
end
