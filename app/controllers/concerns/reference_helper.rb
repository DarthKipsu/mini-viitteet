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

  def form_fields(reference)
    unwanted = Set.new ['id', 'key', 'created_at', 'updated_at']
    return unwanted ^ reference.column_names.to_set
  end
end
