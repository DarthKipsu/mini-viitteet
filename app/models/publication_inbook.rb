class PublicationInbook < ActiveRecord::Base
	belongs_to :inbook
  	belongs_to :publication
end
