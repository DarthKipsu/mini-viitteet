class PublicationAchievement < ActiveRecord::Base
  belongs_to :publicaton
  belongs_to :achievement
end
