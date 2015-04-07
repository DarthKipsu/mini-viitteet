class Article < ActiveRecord::Base
  has_many :publications, through: :publication_articles

  validates :author, :title, :journal, :year, :volume, presence: true
end
