class Publication < ActiveRecord::Base
  has_many :articles, through: :publication_articles
  has_many :books, through: :publication_books
  has_many :booklets, through: :publication_booklets
  has_many :inbooks, through: :publication_inbooks
  has_many :inproceedings, through: :publication_inproceedings
  has_many :manuals, through: :publication_manuals
  has_many :masterthesis, through: :masterthesis
end
