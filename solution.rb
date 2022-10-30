# Please copy/paste all three classes into this file to submit your solution!
class Author
    attr_accessor :name
  
  
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
      Article.new(magazine,title,self)
    end
  
  
  end

  
  class Article
    attr_accessor :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end


end

class Magazine
    attr_accessor :name, :category
    @@all = []
  
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
  
    end
  
  
  end
  