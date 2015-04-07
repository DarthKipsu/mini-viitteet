class Article < ActiveRecord::Base
  validates :author, :title, :journal, :year, :volume, presence: true
end
