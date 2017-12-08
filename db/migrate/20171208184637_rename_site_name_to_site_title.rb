class RenameSiteNameToSiteTitle < ActiveRecord::Migration[5.1]
  def change
    rename_column :sites, :name, :title
  end
end
