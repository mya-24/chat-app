class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_create)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_create
    params.require(:user).permit(:name, :email)
  end

end
