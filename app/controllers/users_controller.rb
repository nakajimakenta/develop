class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end
