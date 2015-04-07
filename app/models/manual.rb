class Manual < ActiveRecord::Base
	has_many :publications, through: :publication_manuals
	belongs_to :publication
end
