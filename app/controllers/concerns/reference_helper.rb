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
             phdthesis: Phdthesis,
             techreport: Techreport,
             unpublished: Unpublished }
  end

  def form_fields(reference)
    unwanted = Set.new ['id', 'key', 'created_at', 'updated_at']
    return unwanted ^ reference.column_names.to_set
  end

  def reference_params_for(type)
    case type
    when :article
      params.permit(:author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :bibtexkey)
    when :booklet
      params.permit(:author, :title, :howpublished, :year, :address, :month, :note, :bibtexkey)
    when :book
      params.permit(:author, :title, :publisher, :year, :address, :series, :edition, :editor, :month, :note, :bibtexkey)
    when :inbook
      params.permit(:author, :title, :editor, :year, :volume, :number, :pages, :month, :chapter, :publisher, :series, :type, :address, :edition, :note, :bibtexkey)
    when :incollection
      params.permit(:author, :title, :booktitle, :editor, :year, :volume, :number, :pages, :month, :chapter, :publisher, :series, :type, :address, :edition, :note, :bibtexkey)
    when :inproceeding
      params.permit(:author, :title, :booktitle, :year, :editor, :volume, :number, :series, :pages, :address, :month, :organization, :publisher, :note, :bibtexkey)
    when :manual
      params.permit(:title, :author, :organization, :address, :editor, :month, :year, :note, :bibtexkey)
    when :masterthesis
      params.permit(:author, :title, :school, :year, :type, :address, :month, :note, :bibtexkey)
    when :misc
      params.permit(:author, :title, :howpublished, :month, :year, :note, :bibtexkey)
    when :phdthesis
      params.permit(:author, :title, :school, :year, :type, :address, :month, :note, :bibtexkey)
    when :techreport
      params.permit(:author, :title, :institution, :year, :type, :number, :address, :month, :note, :bibtexkey)
    when :unpublished
      params.permit(:author, :title, :note, :month, :year, :bibtexkey)
    else 
      params.permit()
    end
  end

end
