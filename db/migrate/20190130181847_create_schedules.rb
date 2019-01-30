class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :owner_name
      t.string :owner_email
      t.string :phone
      t.date :date
      t.string :hour

      t.timestamps
    end
  end
end
