
class Magazine
  attr_reader :name, :category
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def name
    @name
  end

  def category
    @category
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.map do |article|
      article.author
  end
  end

  def find_by_name(name)
    @@all.find do |magazine|
      magazine if magazine.name == name
      end
  end

  def article_titles
    Article.all.map do |article|
      article.title == self.name
    end
  end

  def contributing_authors
    no_of_contributions = contributors.tally
    no_of_contributions.filter do |key,value|
      value > 2
    end
  end

end


