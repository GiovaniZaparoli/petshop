class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @user = User.all
    render :index
  end

  def create
    binding.pry
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Usuário criado com sucesso"
      index
    else
      render :new
    end

  def new
    @user = User.new
    render :new
  end



    def edit
      render :edit
    end

    def update
      if @User.update  user_params
        flash[:notice] = 'Usuário atualizado com sucesso'
        index
      else
        render :edit
      end
    end

    def destroy
      @User.destroy
      index
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end

  def set_user
    @User = User.find_by(id: params[:id])
  end

end