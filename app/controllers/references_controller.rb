class ReferencesController < ApplicationController
  include ReferenceHelper

  # GET /references/new
  def new
    @reference = Hash.new
    reference_types.each{ |t| @reference[t[0]] = form_fields t[1] }
  end

  # POST /reference/new
  def create
    type = params[:ref_type]
  	case type

  	when :article

  	when :book

  	when :booklet

  	when :inbook

  	when :incollection

  	when :inproceeding
    redirect_to publications_path, notice: 'Reference added'
  end
end
