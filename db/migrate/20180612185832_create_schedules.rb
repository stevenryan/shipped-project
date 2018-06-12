class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.string :origin
      t.string :destination
      t.integer :boat_id
      t.integer :job_id
      t.timestamps
    end
  end
end
