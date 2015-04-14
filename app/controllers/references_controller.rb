class ReferencesController < ApplicationController

  # GET /references/new
  def new
    @article_columns = Article.column_names
  end

  # POST /reference/new
  def create
    redirect_to publications_path, notice: 'Reference added'
  end
  
  # DELETE references/1
  def destroy
     
  end
end
