class PublicationMasterthesis < ActiveRecord::Base
	belongs_to :masterthesis
  	belongs_to :publication
end
