class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
    	t.string  :tittle , :limit=>"50" , :null=>"false"
    	t.float   :price
    	t.integer :subject_id
    	t.text 	  :description
		t.timestamps :created_at
    end
  end

  def self.down
    drop_table :books
  end
end
