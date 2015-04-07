class Inproceeding < ActiveRecord::Base
	has_many :publications, through: :publication_inproceedings
	belongs_to :publication

	validates :author, :title, :booktitle, :year, presence: true
end
