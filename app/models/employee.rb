class Employee < ActiveRecord::Base
	set_table_name "ODSEmployee"
	attr_accessible :firstname, :lastname, :phoneextension,:businessphone, :DeskNumber
	
	def self.search(search)
		if search
		  if search =~ /\w+\s\w+/i
		  	where('FirstName LIKE ? AND LastName LIKE ? OR FirstName LIKE ? OR OtherName LIKE ?', "%#{search.split(' ')[0]}%", "%#{search.split(' ')[1]}%", "%#{search}%",  "%#{search}%")     	
		  else
		    where('FirstName LIKE ? OR LastName LIKE ? OR OtherName LIKE ? OR PhoneExtension LIKE ? OR BusinessPhone LIKE ? OR DeskNumber LIKE ? OR Department LIKE ? OR Title LIKE ? OR Cell LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
		  end
		else
		  scoped
		end
	end 
	
	def self.quicksearch(search)
		if search
		  if search =~ /\w+\s\w+/i
		  	where('FirstName LIKE ? AND LastName LIKE ? OR FirstName LIKE ?', "%#{search.split(' ')[0]}%", "%#{search.split(' ')[1]}%", "%#{search}%")     	
		  else
		    where('FirstName LIKE ? OR LastName LIKE ? OR PhoneExtension LIKE ? OR BusinessPhone LIKE ? OR DeskNumber LIKE ?' , "%#{search}%","%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
		  end
		else
		  scoped
		end
	end 	
end
