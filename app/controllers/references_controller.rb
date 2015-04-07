class ReferencesController < ApplicationController

  # GET /references/new
  def new
    @article = Article.new
  end

  # POST /reference/new
  def create
    redirect_to publications_path, notice: 'Reference added'
  end
end
