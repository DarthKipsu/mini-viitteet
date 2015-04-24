class PublicationAchievement < ActiveRecord::Base
  belongs_to :publicaton
  belongs_to :achievement

  scope :for_display, -> { where display:true }
end
