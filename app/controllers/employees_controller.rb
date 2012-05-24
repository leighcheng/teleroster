class EmployeesController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
	if request.user_agent.include?("iPhone")
		@employees = Employee.where('LastName IS NOT NULL').quicksearch(params[:search]).order(sort_column + " " + sort_direction).page(params[:page]).per(8)	
	else
		@employees = Employee.where('LastName IS NOT NULL').search(params[:search]).order(sort_column + " " + sort_direction).page(params[:page]).per(10)	
        @searchcounts = Employee.where('LastName IS NOT NULL').search(params[:search]).size		
	end    
  end
  
  private
  
  def sort_column
    Employee.column_names.include?(params[:sort]) ? params[:sort] : "LastName"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
