class Unpublished < ActiveRecord::Base
  has_many :publications, through: :publication_phdtheses

  validates :author, :title, :note, presence: true
end
