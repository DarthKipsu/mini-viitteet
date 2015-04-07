class Booklet < ActiveRecord::Base
	has_many :publications, through: :publication_booklets
	belongs_to :publication

	validates :title, presence: true
end
