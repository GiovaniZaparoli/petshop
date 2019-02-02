class UsersController < ApplicationController

  before_action :authenticate_user!

  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
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
      redirect_to users_path
    else
      flash[:notice] = "Falha ao criado com sucesso"
      redirect_to users_path
    end
  end

  def edit
    render :edit
  end

  def update
    if @user.update  user_params
      flash[:notice] = 'Usuário atualizado com sucesso'
      redirect_to users_path
    else
      flash[:notice] = 'Falha ao atualizar dados do usuário'
      redirect_to users_path
    end
  end

  def destroy
    if @user.destroy
      flash[:notice] = 'Usuário excluído'
      redirect_to users_path
    else
      flash[:notice] = 'Falha ao excluir usuário'
      redirect_to users_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

end