class PublicationTechreport < ActiveRecord::Base
    belongs_to :publication
    belongs_to :techreport
end
