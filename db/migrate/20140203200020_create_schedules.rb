class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.text :availability
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
