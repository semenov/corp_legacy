class CreateModsSites < ActiveRecord::Migration
  def self.up
    create_table :mods_sites do |t|
      t.integer :site_id
      t.integer :mod_id

      t.timestamps
    end
  end

  def self.down
    drop_table :mods_sites
  end
end
