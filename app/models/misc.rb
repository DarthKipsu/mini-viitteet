class Misc < ActiveRecord::Base
  has_many :publications, through: :publication_miscs

  # no required fields but something needs to be filled
  validate :any_present?

  def any_present?
    if %w(author title howpublished month year note).all?{|attr| self[attr].blank?}
      errors.add :base, "Can't add empty reference"
    end
  end

  def required_fields
    %w(none)
  end

  def self.required_fields
    %w(none)
  end
end
