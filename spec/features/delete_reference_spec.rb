require 'rails_helper'

describe 'deleting new references' do
  before(:each) do
    @pub = FactoryGirl.create(:publication)

  end

  describe 'destroy reference' do
    it 'destroys article' do
      a = FactoryGirl.create(:article)
      @pub.article << a
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationArticle.count }.by -1
    end
    it 'destroys book' do
      b = FactoryGirl.create(:book)
      @pub.book << b
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationBook.count }.by -1
    end
    it 'destroys inbook' do
      ib = FactoryGirl.create(:inbook)
      @pub.inbook << ib
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationInbook.count }.by -1
    end
    it 'destroys incollection' do
      ic = FactoryGirl.create(:incollection)
      @pub.incollection << ic
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationIncollection.count }.by -1
    end
    it 'destroys inproceeding' do
      ip = FactoryGirl.create(:inproceeding)
      @pub.inproceeding << ip
      visit publication_path(@pub)
      expect{
        click_link("Destroy")
      }.to change{ PublicationInproceeding.count }.by -1
    end
    it 'destroys manual' do
      m = FactoryGirl.create(:manual)
      @pub.manual << m
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationManual.count }.by -1
    end
    it 'destroys masterthesis' do
      a = FactoryGirl.create(:masterthesis)
      @pub.masterthesis << a
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationMasterthesis.count }.by -1
    end

    it 'destroys phdthesis' do
      a = FactoryGirl.create(:phdthesis)
      @pub.phdthesis << a
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationPhdthesis.count }.by -1
    end
    it 'destroys misc' do
      a = FactoryGirl.create(:misc)
      @pub.misc << a
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationMisc.count }.by -1
    end

    it 'destroys techreport' do
      a = FactoryGirl.create(:techreport)
      @pub.techreport << a
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationTechreport.count }.by -1
    end

    it 'destroys unpublished' do
      up = FactoryGirl.create(:unpublished)
      @pub.unpublished << up
      visit publication_path(@pub)

      expect{
        click_link("Destroy")
      }.to change{ PublicationUnpublished.count }.by -1
    end

  end
end
