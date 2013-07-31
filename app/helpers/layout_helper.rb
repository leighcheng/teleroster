# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
	def title(page_title, show_title = true)
	content_for(:title) { page_title.to_s }
	@show_title = show_title
	end
	
	def show_title?
	@show_title
	end
	
	def stylesheet(*args)
	content_for(:head) { stylesheet_link_tag(*args) }
	end
	
	def javascript(*args)
	content_for(:head) { javascript_include_tag(*args) }
	end
  
  	def data_anniversary
		a = []
		n = 0
		(1976..Time.new.year).each do |y|
		  n = Employee.where('year(Anniversary) = ?', y ).size
		  a.push(n)	
		end
		return a
	end  
	
	def data_location	
	  a = []	
	  a = Employee.select("Location").where('Location is not null').group("Location").count.delete_if {|key, value| key == "ODS" }.to_a.sort
	  return a
	end   
	
	def data_department	
	  a = []	
	  a = Employee.select("Department").where('Department is not null').group("Department").count.delete_if {|key, value| key == "ODS" }.to_a.sort
	  return a
	end  
	
	def total_employees
	  a = Employee.where('firstname is not null').count.to_s
	end
  
end
