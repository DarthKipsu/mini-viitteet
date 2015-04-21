class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  # GET /publications
  # GET /publications.json
  def index
    @publications = Publication.all
  end

  # GET /publications/1
  # GET /publications/1.json

  def not_show(c)
    if c == "created_at" || c == "updated_at" || c == "bibtexkey"
      return true;
    else 
      return false;
    end
  end

  def get_muotoilu(re)
    muotoilu = "@"
      muotoilu += re.class.name + "{" + re.bibtexkey + ", <br />"
      re.class.name.singularize.classify.constantize.column_names.each do |c|
        if not_show(c) || re.send(c).to_s == ""
          next;
        end
        muotoilu += "&nbsp; &nbsp; &nbsp; &nbsp;" + c + " = " + re.send(c).to_s + "<br />"
      end
      muotoilu += "} <br />"
      return muotoilu
  end

  def show
    @references = @publication.references
    @bibtexes = []
    @achievements = []
    @publication.display_new_achievements.each do |a|
      @achievements << Achievement.find_by_id(PublicationAchievement.find_by_id(a.id).achievement_id)
    end
    @references.each do |re|
      muotoilu = get_muotoilu(re)
      @bibtexes.push(muotoilu)
    end
    @unlocked_achievements = @publication.achievements
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(publication_params)

    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'Publication was successfully created.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: 'Publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:name)
    end
end
