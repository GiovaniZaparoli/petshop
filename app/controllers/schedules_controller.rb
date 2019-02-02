class SchedulesController < ApplicationController

  def idex
    @schedules = without_past
    render :index
  end

  def new
    @schedule = Schedule.new
    render :new
  end

  private

  def without_past
    Schedule.where("date: >= ?", Date.current)
  end
end
