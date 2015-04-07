class ReferencesController < ApplicationController

  # GET /references/new
  def new
    @reference = Hash.new
    @reference[:article] = Article.column_names
    @reference[:book] = Book.column_names
    @reference[:booklet] = Booklet.column_names
    @reference[:inbook] = Inbook.column_names
    @reference[:incollection] = Incollection.column_names
    @reference[:inproceeding] = Inproceeding.column_names
    @reference[:manual] = Manual.column_names
    @reference[:masterthesis] = Masterthesis.column_names
    @reference[:misc] = Misc.column_names
    @reference[:phdthesis] = Phdthesis.column_names
    @reference[:techreport] = Techreport.column_names
    @reference[:unpublished] = Unpublished.column_names
  end

  # POST /reference/new
  def create
  	type = params[:ref_type]
    redirect_to publications_path, notice: 'Reference added'
  end
end
