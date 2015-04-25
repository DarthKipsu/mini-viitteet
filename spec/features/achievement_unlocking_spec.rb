require 'rails_helper'

describe 'achievement unlocking' do
  before :each do
    @pub = FactoryGirl.create(:publication)
    @ach = FactoryGirl.create(:achievement)
    visit publication_path(@pub)
    click_link 'Add new reference'
  end

  describe 'unlocking achievement' do
    it 'unlocks Matti Luukkainen achievement when mluukkai is added as an author' do
      select 'misc', from: 'type-selector'
      fill_in 'misc-title', with: 'Everything you need to know'
      fill_in 'misc-author', with: 'Matti Luukkainen'
      expect{ click_button 'misc-submit' }.to change{ PublicationAchievement.count }.by 1
    end
  end
end
