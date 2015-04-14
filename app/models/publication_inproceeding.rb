class PublicationInproceeding < ActiveRecord::Base
	belongs_to :inproceeding
  	belongs_to :publication
end
