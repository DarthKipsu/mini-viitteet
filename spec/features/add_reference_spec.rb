require 'rails_helper'

describe 'adding new references' do
  before(:each) do
    @pub = FactoryGirl.create(:publication)
    FactoryGirl.create(:achievement)
    visit publication_path(@pub)
    click_link 'Add new reference'
  end

  describe 'where type is article' do
    it 'adds article to db' do
      fill_in 'article-author', with: 'Teppo Tutkija'
      fill_in 'article-title', with: 'Learning scrum'
      fill_in 'article-journal', with: 'Programming for everyone'
      fill_in 'article-year', with: '2010'
      fill_in 'article-volume', with: '3'
      expect{ click_button 'article-submit' }.to change{ Article.count }.by 1
      checkEditTitle
    end

    it 'does not save article to db if required info is missing' do
      expect{ click_button 'article-submit' }.to change{ Article.count }.by 0
    end
  end

  describe 'where type is booklet' do
    before :each do
      select 'booklet', from: 'type-selector'
    end

    it 'adds booklet to db' do
      fill_in 'booklet-title', with: 'Scrum masters guidelines'
      expect{ click_button 'booklet-submit' }.to change{ Booklet.count }.by 1
      checkEditTitle
    end

    it 'does not save booklet to db if required info is missing' do
      expect{ click_button 'booklet-submit' }.to change{ Booklet.count }.by 0
    end
  end

  describe 'where type is book' do
    before :each do
      select 'book', from: 'type-selector'
    end

    it 'adds book to db when author is selected' do
      fill_in 'book-title', with: 'Agile for dummies'
      fill_in 'book-author', with: 'Kaapo Kirjailija'
      fill_in 'book-publisher', with: 'Publisher'
      fill_in 'book-year', with: '2010'
      expect{ click_button 'book-submit' }.to change{ Book.count }.by 1
      checkEditTitle
    end

    it 'adds book to db when editor is selected' do
      fill_in 'book-title', with: 'Agile for dummies'
      fill_in 'book-editor', with: 'Julppu Julkaisija'
      fill_in 'book-publisher', with: 'Publisher'
      fill_in 'book-year', with: '2010'
      expect{ click_button 'book-submit' }.to change{ Book.count }.by 1
      checkEditTitle
    end

    it 'does not save bookto db if required info is missing' do
      expect{ click_button 'book-submit' }.to change{ Book.count }.by 0
    end
  end

  describe 'where type is inbook' do
    before :each do
      select 'inbook', from: 'type-selector'
    end

    it 'adds inbook to db when author and chapter is selected' do
      fill_in 'inbook-title', with: 'Scrum for beginners'
      fill_in 'inbook-author', with: 'Kaapo Kirjailija'
      fill_in 'inbook-chapter', with: '4b'
      fill_in 'inbook-publisher', with: 'Publisher'
      fill_in 'inbook-year', with: '2010'
      expect{ click_button 'inbook-submit' }.to change{ Inbook.count }.by 1
      checkEditTitle
    end

    it 'adds inbook to db when editor and pages is selected' do
      fill_in 'inbook-title', with: 'Scrum for beginners'
      fill_in 'inbook-editor', with: 'Julppu Julkaisija'
      fill_in 'inbook-pages', with: '22-24'
      fill_in 'inbook-publisher', with: 'Publisher'
      fill_in 'inbook-year', with: '2010'
      expect{ click_button 'inbook-submit' }.to change{ Inbook.count }.by 1
      checkEditTitle
    end

    it 'does not save inbookto db if required info is missing' do
      expect{ click_button 'inbook-submit' }.to change{ Inbook.count }.by 0
    end
  end

  describe 'where type is incollection' do
    before :each do
      select 'incollection', from: 'type-selector'
    end

    it 'adds incollection to db' do
      fill_in 'incollection-author', with: 'Kaapo Kirjailija'
      fill_in 'incollection-title', with: 'Test Driven Thinking'
      fill_in 'incollection-booktitle', with: 'Scrum fo everyone'
      fill_in 'incollection-publisher', with: 'Publisher'
      fill_in 'incollection-year', with: '2010'
      expect{ click_button 'incollection-submit' }.to change{ Incollection.count }.by 1
      checkEditTitle
    end

    it 'does not save incollection to db if required info is missing' do
      expect{ click_button 'incollection-submit' }.to change{ Incollection.count }.by 0
    end
  end

  describe 'where type is inproceeding' do
    before :each do
      select 'inproceeding', from: 'type-selector'
    end

    it 'adds inproceeding to db' do
      fill_in 'inproceeding-author', with: 'Koisti Konferenssinpitäjä'
      fill_in 'inproceeding-title', with: 'Hands on agile'
      fill_in 'inproceeding-booktitle', with: 'Scrum'
      fill_in 'inproceeding-year', with: '2010'
      expect{ click_button 'inproceeding-submit' }.to change{ Inproceeding.count }.by 1
      checkEditTitle
    end

    it 'does not save inproceeding to db if required info is missing' do
      expect{ click_button 'inproceeding-submit' }.to change{ Inproceeding.count }.by 0
    end
  end

  describe 'where type is manual' do
    before :each do
      select 'manual', from: 'type-selector'
    end

    it 'adds manual to db' do
      fill_in 'manual-title', with: 'Unix Manual'
      expect{ click_button 'manual-submit' }.to change{ Manual.count }.by 1
      checkEditTitle
    end

    it 'does not save manual to db if required info is missing' do
      expect{ click_button 'manual-submit' }.to change{ Manual.count }.by 0
    end
  end

  describe 'where type is masterthesis' do
    before :each do
      select 'masterthesis', from: 'type-selector'
    end

    it 'adds masterthesis to db' do
      fill_in 'masterthesis-author', with: 'Arto Vihavainen'
      fill_in 'masterthesis-title', with: 'Event Relevance in Information Extraction'
      fill_in 'masterthesis-school', with: 'University of Helsinki'
      fill_in 'masterthesis-year', with: '2011'
      expect{ click_button 'masterthesis-submit' }.to change{ Masterthesis.count }.by 1
      checkEditTitle
    end

    it 'does not save masterthesis to db if required info is missing' do
      expect{ click_button 'masterthesis-submit' }.to change{ Masterthesis.count }.by 0
    end
  end

  describe 'where type is misc' do
    before :each do
      select 'misc', from: 'type-selector'
    end

    it 'adds misc to db' do
      fill_in 'misc-title', with: 'Some agile chart found on facebook'
      expect{ click_button 'misc-submit' }.to change{ Misc.count }.by 1
      checkEditTitle
    end

    it 'does not save misc to db if all fields are empty' do
      expect{ click_button 'misc-submit' }.to change{ Misc.count }.by 0
    end
  end

  describe 'where type is phdthesis' do
    before :each do
      select 'phdthesis', from: 'type-selector'
    end

    it 'adds phdthesis to db' do
      fill_in 'phdthesis-author', with: 'Pietu Pohjalainen'
      fill_in 'phdthesis-title', with: 'Self-Organizing Software Architectures'
      fill_in 'phdthesis-school', with: 'University of Helsinki'
      fill_in 'phdthesis-year', with: '2013'
      expect{ click_button 'phdthesis-submit' }.to change{ Phdthesis.count }.by 1
      checkEditTitle
    end

    it 'does not save phdthesis to db if required info is missing' do
      expect{ click_button 'phdthesis-submit' }.to change{ Phdthesis.count }.by 0
    end
  end

  describe 'where type is techreport' do
    before :each do
      select 'techreport', from: 'type-selector'
    end

    it 'adds techreport to db' do
      fill_in 'techreport-author', with: 'Late Lehtimies'
      fill_in 'techreport-title', with: 'Agile Magazine'
      fill_in 'techreport-institution', with: 'University of Helsinki'
      fill_in 'techreport-year', with: '2010'
      expect{ click_button 'techreport-submit' }.to change{ Techreport.count }.by 1
      checkEditTitle
    end

    it 'does not save techreport to db if required info is missing' do
      expect{ click_button 'techreport-submit' }.to change{ Techreport.count }.by 0
    end
  end

  describe 'where type is unpublished' do
    before :each do
      select 'unpublished', from: 'type-selector'
    end

    it 'adds unpublished to db' do
      fill_in 'unpublished-author', with: 'Kaapo Kirjailija'
      fill_in 'unpublished-title', with: 'Ajatuksia Kanbanista'
      fill_in 'unpublished-note', with: 'Diary'
      expect{ click_button 'unpublished-submit' }.to change{ Unpublished.count }.by 1
      checkEditTitle
    end

    it 'does not save unpublished to db if required info is missing' do
      expect{ click_button 'unpublished-submit' }.to change{ Unpublished.count }.by 0
    end
  end
end


def checkEditTitle
  click_link 'Edit'
  fill_in 'title', with: 'DROP TABLE Groups 4ever'
  click_button 'Submit'
  expect(page).to have_content 'Reference updated'
end
