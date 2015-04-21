require 'rails_helper'

describe 'showing references in bibtex' do
  before(:each) do
    @pub = FactoryGirl.create(:publication)

  end

  describe 'show reference' do
    it 'show article' do
      a = FactoryGirl.create(:article)
      @pub.article << a
      visit publication_path(@pub)
      muotoilu = a.class.name + "{" + a.bibtexkey

      expect(page).to have_content muotoilu + " author"
    end
    it 'show book' do
      b = FactoryGirl.create(:book)
      @pub.book << b
      visit publication_path(@pub)
      muotoilu = b.class.name + "{" + b.bibtexkey

      expect(page).to have_content muotoilu + " author"
    end
    it 'show inbook' do
      ib = FactoryGirl.create(:inbook)
      @pub.inbook << ib
      visit publication_path(@pub)

      muotoilu = ib.class.name + "{" + ib.bibtexkey

      expect(page).to have_content muotoilu + " chapter"
    end
    it 'show incollection' do
      ic = FactoryGirl.create(:incollection)
      @pub.incollection << ic
      visit publication_path(@pub)

      muotoilu = ic.class.name + "{" + ic.bibtexkey

      expect(page).to have_content muotoilu + " booktitle"
    end
    it 'show inproceeding' do
      ip = FactoryGirl.create(:inproceeding)
      @pub.inproceeding << ip
      visit publication_path(@pub)
      muotoilu = ip.class.name + "{" + ip.bibtexkey
      
      expect(page).to have_content muotoilu + " number"
    end
    it 'show manual' do
      m = FactoryGirl.create(:manual)
      @pub.manual << m
      visit publication_path(@pub)
      muotoilu = m.class.name + "{" + m.bibtexkey 

      expect(page).to have_content muotoilu + " organization"
    end
    it 'show masterthesis' do
      a = FactoryGirl.create(:masterthesis)
      @pub.masterthesis << a
      visit publication_path(@pub)

      muotoilu = a.class.name + "{" + a.bibtexkey

      expect(page).to have_content muotoilu + " address"
    end

    it 'show phdthesis' do
      a = FactoryGirl.create(:phdthesis)
      @pub.phdthesis << a
      visit publication_path(@pub)

      muotoilu = a.class.name + "{" + a.bibtexkey
      expect(page).to have_content muotoilu + " note"
    end
    it 'show misc' do
      a = FactoryGirl.create(:misc)
      @pub.misc << a
      visit publication_path(@pub)
      muotoilu = a.class.name + "{" + a.bibtexkey
      
      expect(page).to have_content muotoilu + " howpublished"
    end

    it 'show techreport' do
      a = FactoryGirl.create(:techreport)
      @pub.techreport << a
      visit publication_path(@pub)
      muotoilu = a.class.name + "{" + a.bibtexkey

      expect(page).to have_content muotoilu + " month"
    end

    it 'show unpublished' do
      up = FactoryGirl.create(:unpublished)
      @pub.unpublished << up
      visit publication_path(@pub)
      muotoilu = up.class.name + "{" + up.bibtexkey

      expect(page).to have_content muotoilu + " editor"
    end

  end
end
