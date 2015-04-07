class PublicationArticle < ActiveRecord::Base
  belongs_to :publication
  belongs_to :article
end
