class Publication < ActiveRecord::Base
  has_many :articles, through: :publication_articles
end
