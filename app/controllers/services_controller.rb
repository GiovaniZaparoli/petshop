class ServicesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_service, only: [:edit, :update, :destroy]

  def index
    @service = Service.all
    render :index
  end

  def create
    @service = Service.new service_params
    if @service.save
      flash[:notice] = "Serviço salvo com sucesso"
      redirect_to services_path
    else
      render :new
    end
  end

  def edit
    render :edit
  end

  def update
    if @service.update  service_params
      flash[:notice] = 'Serviço atualizado com sucesso'
      redirect_to services_path
    else
      render :edit
    end
  end

  def destroy
    if @service.destroy
      flash[:notice] = 'Serviço excluído com sucesso'
      redirect_to services_path
    else
      flash[:notice] = 'Falha ao excluído com sucesso'
      redirect_to services_path
    end
  end

  def new
    @service = Service.new
    render :new
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :price, :imagem)
  end

  def set_service
    @service = Service.find_by(id: params[:id])
  end
end
