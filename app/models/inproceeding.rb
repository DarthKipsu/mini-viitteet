class Inproceeding < ActiveRecord::Base
  has_many :publications, through: :publication_inproceedings
  belongs_to :publication

  validates :author, :title, :booktitle, :year, presence: true

  def self.required_fields
    %w(author title year booktitle)
  end
end
