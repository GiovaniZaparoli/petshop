class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.text :description
      t.float :price
      t.binary :picture
      
      t.timestamp
    end
  end
end
