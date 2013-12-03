class SearchController < ApplicationController
  def index
  	# assigns so that the users input is 
  	# used as the query
  	query = params['q']   
  	# Using the method search_for, 
  	# which is defined in the model 
  	@stories = Story.search_for query 
  end
end
