require 'pry'

class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  
  def articles
    Article.all.filter do |article|
      article.author == self.name
      end
  end

#Returns the magazine for that article
  def magazines
    magazines = Article.all.map do |article|
      article.magazine
      end
      magazines.uniq
  end

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

  def topic_areas
    arr = Article.all.select do |article|
      article.magazine.category
      end.uniq
  end


end



