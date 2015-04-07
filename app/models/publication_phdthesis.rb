class PublicationPhdthesis < ActiveRecord::Base
  belongs_to :publication
  belongs_to :phdthesis
end
