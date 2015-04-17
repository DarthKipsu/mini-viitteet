class Masterthesis < ActiveRecord::Base
  has_many :publications, through: :publication_masterthesis
  belongs_to :publication

  validates :author, :title, :school, :year, presence: true

  def required_fields
    %w(author school title year)
  end

  def self.required_fields
    %w(author school title year)
  end
end
