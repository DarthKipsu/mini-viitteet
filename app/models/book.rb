class Book < ActiveRecord::Base
	has_many :publications, through: :publication_books 
	belongs_to :publication
end
