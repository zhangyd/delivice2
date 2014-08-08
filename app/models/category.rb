class Category < ActiveRecord::Base
	belongs_to :store
	has_many :subcategories
	has_many :items, :through => :subcategories

end