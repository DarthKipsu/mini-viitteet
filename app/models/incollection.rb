class Incollection < ActiveRecord::Base
    has_many :publications, through: :publication_incollections

    validates :authorm, :title, :booktitle, :publisher, :year, presence: true
end
