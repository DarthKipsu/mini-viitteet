class Techreport < ActiveRecord::Base
    has_many :publications, through: :publication_techreports
    
    validates :author, :title, :institution, :year, presence: true
end
