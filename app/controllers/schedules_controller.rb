class SchedulesController < ApplicationController

  def idex
    @schedules = without_past
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
    end
  end

  private

  def without_past
    Schedule.where("date: >= ?", Date.current)
  end

  def schedule_params
    params.require(:schedule).permit(:owner_name, :owner_email, :date, :hour, :service_id)
  end
end
