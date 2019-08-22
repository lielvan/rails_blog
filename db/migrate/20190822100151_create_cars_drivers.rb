class CreateCarsDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :cars_drivers, :id => false do |t|
      t.integer :car_id, index: true
      t.integer :driver_id, index: true
    end
  end
end
