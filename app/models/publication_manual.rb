class PublicationManual < ActiveRecord::Base
	belongs_to :manual
  	belongs_to :publication
end
