class RemoveRolesFromBook < ActiveRecord::Migration
  def self.up
  	remove_column :books, :roles
  
  end

  def self.down
  	add_column :books, :roles
  end
end
