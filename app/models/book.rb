class Book < ActiveRecord::Base
	has_many :publications, through: :publication_books 
	belongs_to :publication

	validates :title, :publisher, :year, presence: true
  validates :author, presence: true, unless: ->(book){book.editor.present?}
  validates :editor, presence: true, unless: ->(book){book.author.present?}

  def self.required_fields
    %w(author editor title publisher year)
  end
end
