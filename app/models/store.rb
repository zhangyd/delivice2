class Store < ActiveRecord::Base
	has_many :categories
	has_many :subcategories, :through => :categories
	has_many :items, :through => :subcategories

end