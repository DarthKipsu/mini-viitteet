class Publication < ActiveRecord::Base
  has_many :articles, through: :publication_articles
  has_many :books, through: :publication_books
  has_many :booklets, through: :publication_booklets
  has_many :inbooks, through: :publication_inbooks
  has_many :incollections, through: :publication_incollections
  has_many :inproceedings, through: :publication_inproceedings
  has_many :manuals, through: :publication_manuals
  has_many :masterstheses, through: :publication_masterstheses
  has_many :miscs, through: :publication_miscs
  has_many :phdtheses, through: :publication_phdtheses
  has_many :proceedings, through: :publication_proceedings
  has_many :techreports, through: :publication_techreports
  has_many :unpublisheds, through: :publication_unpublisheds    
        
end
