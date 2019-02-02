class SchedulesController < ApplicationController

  before_action :authenticate_user!, only: [:index]

  def index
    @schedule = without_past
    render :index
  end

  def new
    @schedule = Schedule.new
    render :new
  end

  def create
    @schedule = Schedule.new schedule_params
    if @schedule.save
      ScheduleMailer.with(schedule: @schedule).schedule_email.deliver_now!
      flash[:notice] = "Serviço agendado com sucesso"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def without_past
    Schedule.where("date >= ?", Date.current)
  end

  def schedule_params
    params.require(:schedule).permit(:owner_name, :owner_email, :phone,  :date, :hour, :service_id)
  end
end
