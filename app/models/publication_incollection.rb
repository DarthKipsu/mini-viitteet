class PublicationIncollection < ActiveRecord::Base
    belongs_to :publication
    belongs_to :incollection
end
