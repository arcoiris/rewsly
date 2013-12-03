class StoriesController < ApplicationController 
  def index
  	@stories = Story.all
  end 	

  def show
  	find_story
  end

  def new
  	@story = Story.new
  end

  def create
  	@story = Story.create safe_story
  	if @story.save 
  		redirect_to story
  	else
  		render 'new'
  	end
  end

  private 

  def find_story
  	@story = Story.find(params[:id])
  end

  def safe_story
  	params.require(:story).permit(:title, :link, :upvotes, :category)
  end


end
