class Publication < ActiveRecord::Base
  has_many :publication_articles
  has_many :publication_books
  has_many :publication_booklets
  has_many :publication_inbooks
  has_many :publication_incollections
  has_many :publication_inproceedings
  has_many :publication_manuals
  has_many :publication_mastertheses
  has_many :publication_miscs
  has_many :publication_phdtheses
  has_many :publication_techreports
  has_many :publication_unpublisheds

  has_many :article, through: :publication_articles
  has_many :book, through: :publication_books
  has_many :booklet, through: :publication_booklets
  has_many :inbook, through: :publication_inbooks
  has_many :incollection, through: :publication_incollections
  has_many :inproceeding, through: :publication_inproceedings
  has_many :manual, through: :publication_manuals
  has_many :masterthesis, through: :publication_mastertheses
  has_many :misc, through: :publication_miscs
  has_many :phdthesis, through: :publication_phdtheses
  has_many :techreport, through: :publication_techreports
  has_many :unpublished, through: :publication_unpublisheds    

  def add_ref(ref)
    self.send(ref.class.name.downcase) << ref
  end

  def references
    @references = (article + book + inbook + incollection + inproceeding + manual + masterthesis + misc + phdthesis + techreport + unpublished)
    return @references
  end
end
