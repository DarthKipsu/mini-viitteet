class Manual < ActiveRecord::Base
  has_many :publications, through: :publication_manuals
  belongs_to :publication

  validates :title, presence: true

  def required_fields
    %w(title)
  end

  def self.required_fields
    %w(title)
  end
end
