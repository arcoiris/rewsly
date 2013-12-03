class Story < ActiveRecord::Base
	validates :title, :category, :link, presence: true
	validates :upvotes, numericality: { only_integer: true }
	
	def self.search_for(query)
		self.where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
	end

	def self.upvote
		self.upvote += 1
	end
end


