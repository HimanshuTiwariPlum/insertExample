class Book < ActiveRecord::Base
	belongs_to :subject
	validates_presence_of :tittle
	attr_accessible :tittle, :price , :image , :description , :subject_id
	 has_attached_file :image,  :styles => {:small => '150x150>' , :thumb => '100x100>'},
	 							:url => "/assets/user/:id/:style/:basename.:extension" , 
	 							:path =>":rails_root/public/assets/user/:id/:style/:basename.:extension" 
	 	validates_attachment_presence :image
		validates_attachment_size :image, :less_than => 5.megabytes
		validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

	
end
