class Techreport < ActiveRecord::Base
  has_many :publications, through: :publication_techreports

  validates :author, :title, :institution, :year, presence: true

  def required_fields
    %w(author institution title year)
  end

  def self.required_fields
    %w(author institution title year)
  end
end
