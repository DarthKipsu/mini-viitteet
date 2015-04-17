class Article < ActiveRecord::Base
  has_many :publications, through: :publication_articles

  validates :author, :title, :journal, :year, :volume, presence: true

  def self.required_fields
    %w(author title journal year volume)
  end
end
