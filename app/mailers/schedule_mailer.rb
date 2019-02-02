class ScheduleMailer < ApplicationMailer
  default from: 'agendamentos@petsdreams.com'

  def schedule_email
    @schedule = params[:schedule]
    mail(to: @schedule.owner_email, subject: 'Serviço agendado com sucesso')
  end
end
