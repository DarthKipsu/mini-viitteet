class Booklet < ActiveRecord::Base
	has_many :publications, through: :publication_booklets
	belongs_to :publication

	validates :title, presence: true

  def required_fields
    %w(title)
  end

  def self.required_fields
    %w(title)
  end
end
