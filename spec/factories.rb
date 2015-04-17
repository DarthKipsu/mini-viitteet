FactoryGirl.define do
  factory :publication do
    name "Arton Thesis"
  end

  factory :article do
           author    'Teppo Tutkija'
           title    'Learning scrum'
           journal    'Programming for everyone'
           year    '2010'
           volume    '3'
  end

  factory :book do
     title    'Agile for dummies'
     author    'Kaapo Kirjailija'
     publisher    'Publisher'
     year    '2010'
  end

  factory :inbook do
     title    'Scrum for beginners'
     author    'Kaapo Kirjailija'
     chapter    '4b'
     publisher    'Publisher'
     year    '2010'
  end

  factory :incollection do
     author    'Kaapo Kirjailija'
     title    'Test Driven Thinking'
     booktitle    'Scrum fo everyone'
     publisher    'Publisher'
     year    '2010'
  end

  factory :inproceeding do
     author    'Koisti Konferenssinpitäjä'
     title    'Hands on agile'
     booktitle    'Scrum'
     year    '2010'
  end

  factory :manual do
      title    'Unix Manual'
  end

  factory :masterthesis do
     author    'Arto Vihavainen'
     title    'Event Relevance in Information Extraction'
     school    'University of Helsinki'
     year    '2011'
  end

  factory :misc do
     title    'Some agile chart found on facebook'
  end

  factory :phdthesis do
     author    'Pietu Pohjalainen'
     title 'Software Architectures'
     school    'University of Helsinki'
     year    '2013'
  end
  factory :techreport do
     author    'Late Lehtimies'
     title    'Agile Magazine'
     institution    'University of Helsinki'
     year    '2010'
  end

  factory :unpublished do
     author    'Kaapo Kirjailija'
     title    'Ajatuksia Kanbanista'
     note    'Diary'
  end
end
