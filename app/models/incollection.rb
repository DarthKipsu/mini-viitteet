class Incollection < ActiveRecord::Base
  has_many :publications, through: :publication_incollections

  validates :author, :title, :booktitle, :publisher, :year, presence: true

  def self.required_fields
    %w(author title publisher year booktitle)
  end
end
