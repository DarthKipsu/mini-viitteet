class Incollection < ActiveRecord::Base
  has_many :publications, through: :publication_incollections

  validates :author, :title, :booktitle, :publisher, :year, presence: true

  def required_fields
    %w(author title publisher year booktitle)
  end

  def self.required_fields
    %w(author title publisher year booktitle)
  end
end
