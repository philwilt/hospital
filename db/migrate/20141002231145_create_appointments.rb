class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :physician, index: true
      t.references :patient, index: true
      t.datetime :date

      t.timestamps
    end
  end
end
