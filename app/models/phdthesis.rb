class Phdthesis < ActiveRecord::Base
  has_many :publications, through: :publication_phdtheses

  validates :author, :title, :school, :year, presence: true
end
