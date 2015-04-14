class PublicationBook < ActiveRecord::Base
	belongs_to :book
  	belongs_to :publication
end
