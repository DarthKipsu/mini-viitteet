class Misc < ActiveRecord::Base
    has_many :publications, through: :publication_miscs
    
    # no required fields
end
