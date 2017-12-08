class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name, null: false
      t.text :header, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
