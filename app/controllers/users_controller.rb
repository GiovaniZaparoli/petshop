class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    result = User.all
    @users = result.to_a.uniq{ |u| u.email }
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:notice] = "Usuário criado com sucesso"
      index
    else
      render :new
    end
  end

  def edit
    render :edit
  end

  def update
    if @user.update  user_params
      flash[:notice] = 'Usuário atualizado com sucesso'
      index
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    index
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

end