class Inbook < ActiveRecord::Base
	has_many :publications, through: :publication_inbooks
	belongs_to :publication

	validates :title, :publisher, :year, presence: true
  validates :author, presence: true, unless: ->(inbook){inbook.editor.present?}
  validates :editor, presence: true, unless: ->(inbook){inbook.author.present?}
  validates :chapter, presence: true, unless: ->(inbook){inbook.pages.present?}
  validates :pages, presence: true, unless: ->(inbook){inbook.chapter.present?}

  def self.required_fields
    %w(author editor title publisher year chapter pages)
  end
end
