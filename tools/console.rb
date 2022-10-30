require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
def main
  author = Author.new("Sarah Jakes")
  author1 = Author.new("TD. Jakes")
  author2 = Author.new("Jess Connolly")
  author3 = Author.new("Hayley Morgan")
  puts author.name

  magazine = Magazine.new("Woman","Evolve")
  magazine1 = Magazine.new("Woman","Thou","Art","Loosed")
  magazine2 = Magazine.new("Wild","Free")
  magazine3 = Magazine.new("Young","Word")

  author2.add_article(magazine3,"hbdebej!")

  puts magazine.name

  article = Article.new(author, magazine, "Hey You")
  article1 = Article.new(author1, magazine, "Goodbye Fear")
  article2 = Article.new(author2, magazine, "Always Enough")
  article3 = Article.new(author3, magazine, "Goodbye Yesterday")
  article4 = Article.new(author4, magazine, "Don't Settle")

end








### DO NOT REMOVE THIS
binding.pry

0
