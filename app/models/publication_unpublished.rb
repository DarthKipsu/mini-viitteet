class PublicationUnpublished < ActiveRecord::Base
  belongs_to :publication
  belongs_to :unpublished
end
