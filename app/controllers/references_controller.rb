class ReferencesController < ApplicationController
  include ReferenceHelper

  # GET /references/new
  def new
    @publication = params[:publication]
    @reference = Hash.new
    reference_types.each{ |t| @reference[t[0]] = form_fields t[1] }
  end

  # POST /reference/new
  def create
    ref_type = params[:ref_type].to_sym
    @pub = Publication.find_by_id params[:publication]
    @ref = reference_types[ref_type].new(reference_params_for ref_type)
    if @pub && @ref.save
      @pub.add_ref @ref
      redirect_to publication_path(params[:publication]), notice: 'Reference added'
    else
      redirect_to :back, notice: 'Please make sure reference data is correct'
    end
  end
  
  # DELETE references/1
  def destroy
     
  end
end
