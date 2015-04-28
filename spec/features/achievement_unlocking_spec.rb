require 'rails_helper'

describe 'achievement unlocking' do
  before :each do
    @pub = FactoryGirl.create(:publication)
    @ach1 = FactoryGirl.create(:achievement)
    @ach2 = FactoryGirl.create(:achievement, name:'Matti Luukkainen', description:'Added Matti Luukkainen as a reference')
    @ach3 = FactoryGirl.create(:achievement, name:'All your reference are belong to us', description:'Added one of each reference type')
    @ach4 = FactoryGirl.create(:achievement, name:'Off with their heads', description:'Added 12 references')
    visit publication_path(@pub)
    click_link 'Add new reference'
  end

  describe 'unlocking achievement' do
    it 'unlocks Matti Luukkainen achievement when mluukkai is added as an author' do
      select 'misc', from: 'type-selector'
      fill_in 'misc-title', with: 'Everything you need to know'
      fill_in 'misc-author', with: 'Matti Luukkainen'
      expect{ click_button 'misc-submit' }.to change{ PublicationAchievement.count }.by 2 #Also first one
      expect(page).to have_content @ach2.description
    end

    it 'unlocks First one achievement when first reference is added' do
      select 'misc', from: 'type-selector'
      fill_in 'misc-title', with: 'Thesis writing for dummies'
      expect{ click_button 'misc-submit' }.to change{ PublicationAchievement.count }.by 1
      expect(page).to have_content @ach1.description
    end

    it 'unlocks All your reference achievement when all types of references have been added' do
      @pub.article << FactoryGirl.create(:article)
      @pub.booklet << FactoryGirl.create(:booklet)
      @pub.book << FactoryGirl.create(:book)
      @pub.inbook << FactoryGirl.create(:inbook)
      @pub.incollection << FactoryGirl.create(:incollection)
      @pub.inproceeding << FactoryGirl.create(:inproceeding)
      @pub.manual << FactoryGirl.create(:manual)
      @pub.masterthesis << FactoryGirl.create(:masterthesis)
      @pub.phdthesis << FactoryGirl.create(:phdthesis)
      @pub.techreport << FactoryGirl.create(:techreport)
      @pub.unpublished << FactoryGirl.create(:unpublished)
      select 'misc', from: 'type-selector'
      fill_in 'misc-title', with: 'Thesis writing for dummies'
      expect{ click_button 'misc-submit' }.to change{ PublicationAchievement.count }.by 3 #also first one and hearts
      expect(page).to have_content @ach3.description
    end

    it 'unlocks 12 refs achievement when 12 refs have been added' do
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      @pub.article << FactoryGirl.create(:article)
      select 'misc', from: 'type-selector'
      fill_in 'misc-title', with: 'Thesis writing for dummies'
      expect{ click_button 'misc-submit' }.to change{ PublicationAchievement.count }.by 2 #also first one
      expect(page).to have_content @ach4.description
    end
  end
end
