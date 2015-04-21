module AchievementHelper
  def achievements_unlocked_for publication
    achievements = publication.achievements.map{ |a| a.name }
    %w(mluukkainen).each{ |method| send(method, publication, achievements) }
  end

  def mluukkainen publication, achievements
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
end
