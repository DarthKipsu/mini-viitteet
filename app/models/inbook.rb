class Inbook < ActiveRecord::Base
	has_many :publications, through: :publication_inbooks
	belongs_to :publication
end
