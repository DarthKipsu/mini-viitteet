class PublicationBooklet < ActiveRecord::Base
	belongs_to :booklet
  	belongs_to :publication
end
