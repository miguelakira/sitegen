class CreateCalendars < ActiveRecord::Migration[5.1]
  def change
    create_table :calendars do |t|
      t.datetime :date
      t.references :site

      t.timestamps
    end
    add_index :calendars, :artist_id
  end

  def params
    @params
  end
end
