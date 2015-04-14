class Publication < ActiveRecord::Base
  has_many :articles, through: :publication_articles
  has_many :books, through: :publication_books
  has_many :booklets, through: :publication_booklets
  has_many :inbooks, through: :publication_inbooks
  has_many :incollections, through: :publication_incollections
  has_many :inproceedings, through: :publication_inproceedings
  has_many :manuals, through: :publication_manuals
  has_many :masterstheses, through: :publication_masterstheses
  has_many :miscs, through: :publication_miscs
  has_many :phdtheses, through: :publication_phdtheses
  has_many :proceedings, through: :publication_proceedings
  has_many :techreports, through: :publication_techreports
  has_many :unpublisheds, through: :publication_unpublisheds    

  def references
    @references = []
    @references += this.articles
    @references += this.books
    @references += this.booklets
    @references += this.inbooks
    @references += this.incollections
    @references += this.inproceedings
    @references += this.manuals
    @references += this.masterstheses
    @references += this.miscs
    @references += this.phdtheses
    @references += this.proceedings
    @references += this.techreports
    @references += this.unpublisheds
    return @references
  end

  def add_ref(ref)
    self.send(ref.class.name.downcase) << ref
  end
end
