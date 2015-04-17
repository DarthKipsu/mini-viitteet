class Phdthesis < ActiveRecord::Base
  has_many :publications, through: :publication_phdtheses

  validates :author, :title, :school, :year, presence: true

  def self.required_fields
    %w(author title year school)
  end
end
