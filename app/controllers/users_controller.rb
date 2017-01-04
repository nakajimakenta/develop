class UsersController < ApplicationController
  load_and_authorize_resource
  add_breadcrumb "Home", :root_path
  add_breadcrumb "User", :users_path

  def index
    @users = User.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    if params[:user][:roles].present?
      @user.add_role params[:user][:roles]
    end
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def user_params
    params.require(:user).permit!
  end
end
