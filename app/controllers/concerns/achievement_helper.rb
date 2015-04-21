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
      publication.achievements << Achievement.find_by(name:'Matti Luukkainen')
      return true
    end
    false
  end
end
