class Roles < ActiveRecord::Migration
  def self.up
  	create_table :roles do |t|
    	t.string  :name  
    	t.integer   :serial_no
    end
  end

  def self.down
  end
end
