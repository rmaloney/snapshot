class Project < ActiveRecord::Base
	belongs_to :client
	belongs_to :user
	
	

#Attribute Values. Edit these arrays as needed to populate dropdowns in views

	TYPES = [
	  	#displayed  #stored in db
	  	["PxDx", "PXDX"],
	  	["PxDx-Projections", "PXDX-Projections"],
	  	["Custom PxDx", "PXDX-Custom"],
	  	["CDI", "CDI"],
	  	["Masterfile", "Masterfile"]
 	 ]
 	 
 	 FREQUENCIES = [
 	 	#displayed    #stored in db
 	 	["1 time", "1 time" ],
 	 	["Bi-Annual", "Bi-Annual"],
 	 	["Annual", "Annual"],
 	 	["Trimester", "Trimester"],
 	 	["Quarterly", "Quarterly"],
 	 	["Monthly", "Monthly"],
 	 	["Weekly", "Weekly"],
 	 	["Other", "Other"]
 	 ]
 	 
 	 REWORKS = [
 	 	#displayed      #stored in db
 	 	["Code Defect", "Code Defect"],
 	 	["Sales", "Sales"],
 	 	["Delivery", "Delivery"],
 	 	["Other", "Other"]
 	]
 	
 	ISSUES = [
 		["Sales Training", "Sales Training"],
 		["Code Defect", "Code Defect"],
 		["Requirements", "Requirements"],
 		["Delivery", "Delivery"],
 		["Client Training", "Client Training"],
 		["Other", "Other"]
 	]

  # Search Method. This will search based on title, type, frequency.
  
  def self.search(search)  
	  if search  
		where('title LIKE ? OR project_type LIKE ? OR frequency LIKE ?', "%#{search}%", "%#{search}%","%#{search}%")
	  else  
		scoped 
	  end  
   end

end
