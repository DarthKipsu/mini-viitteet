module AchievementHelper
  def achievements_unlocked_for publication
    achievements = publication.achievements.map{ |a| a.name }
    %w(mluukkai first cats hearts).each{ |method| send(method, publication, achievements) }
  end

  def mluukkai publication, achievements
    if achievements.include? 'Matti Luukkainen' then return false end
    authors = publication.references.select do |r|
      r.author && ['Matti Luukkainen', 'Luukkainen, M', 'Luukkainen, Matti', 'M. Luukkainen', 'mluukkai'].include?(r.author)
    end
    if !authors.empty?
      ach = Achievement.find_by(name:'Matti Luukkainen')
      publication.achievements << ach
      PublicationAchievement.find_by(publication_id: publication.id, achievement_id: ach.id).update(display: true)
      return true
    end
    false
  end

  def first publication, achievements
    if achievements.include? 'The First One' then return false end
    ach = Achievement.find_by(name:'The First One')
    publication.achievements << ach
    PublicationAchievement.find_by(publication_id: publication.id, achievement_id: ach.id).update(display: true)
  end

  def cats publication, achievements
    if achievements.include? 'All your reference are belong to us' then return false end
    types = %w(article booklet book inbook incollection inproceeding manual masterthesis misc phdthesis techreport unpublished)
    if types.all? { |t| !publication.send(t).empty? }
      ach = Achievement.find_by(name:'All your reference are belong to us')
      publication.achievements << ach
      PublicationAchievement.find_by(publication_id: publication.id, achievement_id: ach.id).update(display: true)
    end
  end

  def hearts publication, achievements
    if achievements.include? 'Off with their heads' then return false end
    if publication.references.count > 11
      ach = Achievement.find_by(name:'Off with their heads')
      publication.achievements << ach
      PublicationAchievement.find_by(publication_id: publication.id, achievement_id: ach.id).update(display: true)
    end
  end
end
