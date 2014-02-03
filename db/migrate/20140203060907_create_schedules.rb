class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :availability

      t.timestamps
    end
  end
end
