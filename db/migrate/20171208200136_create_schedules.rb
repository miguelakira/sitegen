class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.references :user, null: false
      t.references :calendar

      t.timestamps
    end
    add_index :calendars, :calendar_id
  end
end
