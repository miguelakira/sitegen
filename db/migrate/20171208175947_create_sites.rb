class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name, null: false
      t.text :header, null: false
      t.text :body, null: false
      t.string :slug, :null => false
      t.references :user, null: false

      t.timestamps
    end
    add_index :sites, :slug, :unique => true


  end
end
