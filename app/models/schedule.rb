class Schedule < ApplicationRecord
  validates  :owner_name, :owner_email, :phone, :date, :hour, presence: true

  belongs_to :service
end
