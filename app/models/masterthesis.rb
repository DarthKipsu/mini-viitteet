class Masterthesis < ActiveRecord::Base
	has_many :publications, through: :publication_masterthesis
	belongs_to :publication

	validates :author, :title, :school, :year, presence: true
end
