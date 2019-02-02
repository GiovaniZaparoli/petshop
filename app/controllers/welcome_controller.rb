class WelcomeController < ApplicationController

  def index
    @services = Service.all
    render :index
  end

end
