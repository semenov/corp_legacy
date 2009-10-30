class AddBriefToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :brief, :text
  end

  def self.down
    remove_column :sites, :brief
  end
end
