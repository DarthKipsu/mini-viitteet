class Inbook < ActiveRecord::Base
	has_many :publications, through: :publication_inbooks
	belongs_to :publication

	validates :author, :editor, :title, :chapter, :pages, :publisher, :year, presence: true
end
