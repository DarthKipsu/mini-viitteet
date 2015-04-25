class Unpublished < ActiveRecord::Base
  has_many :publications, through: :publication_phdtheses

  validates :author, :title, :note, presence: true

  def required_fields
    %w(author title note)
  end

  def self.required_fields
    %w(author title note)
  end
end
