class Manual < ActiveRecord::Base
  has_many :publications, through: :publication_manuals
  belongs_to :publication

  validates :title, presence: true

  def self.required_fields
    %w(title)
  end
end
