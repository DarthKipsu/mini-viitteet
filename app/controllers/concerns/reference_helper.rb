module ReferenceHelper
  def reference_types
    return { article: Article,
             booklet: Booklet,
             book: Book,
             inbook: Inbook,
             incollection: Incollection,
             inproceeding: Inproceeding,
             manual: Manual,
             masterthesis: Masterthesis,
             misc: Misc,
             phdtesis: Phdthesis,
             techreport: Techreport,
             unpublished: Unpublished }
  end
end
