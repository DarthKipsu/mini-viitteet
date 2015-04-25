require 'rails_helper'

describe 'finding new references' do
  before(:each) do
    @pub = FactoryGirl.create(:publication)

  end

  describe 'search reference' do
    it 'finds article' do
      a = FactoryGirl.create(:article)
      @pub.article << a
      visit publication_path(@pub)
      fill_in 'search_field', with: 'Teppo'
      click_button("Search")

      expect(page).to have_content("Teppo")
      expect(page).not_to have_content("Ilari")

    end
    it 'finds book' do
      b = FactoryGirl.create(:book)
      @pub.book << b
      visit publication_path(@pub)

      fill_in 'search_field', with: 'dummies'
      click_button("Search")

      expect(page).to have_content("dummies")
      expect(page).not_to have_content("Ilari")
    end
    it 'finds inbook' do
      ib = FactoryGirl.create(:inbook)
      @pub.inbook << ib
      visit publication_path(@pub)
      fill_in 'search_field', with: 'publisher'
      click_button("Search")

      expect(page).to have_content("publisher")
      expect(page).not_to have_content("Ilari")
    end
    it 'finds incollection' do
      ic = FactoryGirl.create(:incollection)
      @pub.incollection << ic
      visit publication_path(@pub)
      fill_in 'search_field', with: 'everyone'
      click_button("Search")

      expect(page).to have_content("everyone")
      expect(page).not_to have_content("Ilari")
    end
    it 'finds inproceeding' do
      ip = FactoryGirl.create(:inproceeding)
      @pub.inproceeding << ip
      visit publication_path(@pub)
      fill_in 'search_field', with: '2010'
      click_button("Search")

      expect(page).to have_content("2010")
      expect(page).not_to have_content("Ilari")
    end
    it 'finds manual' do
      m = FactoryGirl.create(:manual)
      @pub.manual << m
      visit publication_path(@pub)

      fill_in 'search_field', with: 'unix'
      click_button("Search")

      expect(page).to have_content("Unix")
      expect(page).not_to have_content("Ilari")
    end
    it 'finds masterthesis' do
      a = FactoryGirl.create(:masterthesis)
      @pub.masterthesis << a
      visit publication_path(@pub)

      fill_in 'search_field', with: 'arto'
      click_button("Search")

      expect(page).to have_content("Arto")
      expect(page).not_to have_content("Ilari")
    end

    it 'finds phdthesis' do
      a = FactoryGirl.create(:phdthesis)
      @pub.phdthesis << a
      visit publication_path(@pub)
      fill_in 'search_field', with: 'university of helsinki'
      click_button("Search")

      expect(page).to have_content("University of Helsinki")
      expect(page).not_to have_content("Ilari")
    end
    it 'finds misc' do
      a = FactoryGirl.create(:misc)
      @pub.misc << a
      visit publication_path(@pub)

      fill_in 'search_field', with: 'facebook'
      click_button("Search")

      expect(page).to have_content("facebook")
      expect(page).not_to have_content("Ilari")
    end

    it 'finds techreport' do
      a = FactoryGirl.create(:techreport)
      @pub.techreport << a
      visit publication_path(@pub)

      fill_in 'search_field', with: 'magazine'
      click_button("Search")

      expect(page).to have_content("Magazine")
      expect(page).not_to have_content("Ilari")
    end

    it 'finds unpublished' do
      up = FactoryGirl.create(:unpublished)
      @pub.unpublished << up
      visit publication_path(@pub)
      fill_in 'search_field', with: 'kanBan'
      click_button("Search")

      expect(page).to have_content("Kanban")
      expect(page).not_to have_content("Ilari")
    end

  end
end
