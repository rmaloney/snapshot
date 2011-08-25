class Client < ActiveRecord::Base
	has_many :projects
	belongs_to :user
	
	def self.search(search)  
	  if search  
		where('name LIKE ?', "%#{search}%")
	  else  
		scoped 
	  end  
	end
	
	
end
