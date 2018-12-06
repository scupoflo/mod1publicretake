class Author

  attr_accessor :name

@@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end

  def articles

    # self is instance of author
    #I want all articles that I (author)wrote
  Article.all.select do |article|
    article.author == self
    #to get all articles, I have to
    # iterate through the articles to get
    # author to equal self
    end
  end


  def magazines
    #I have to iterate over Articles
    # to find those that I authored
        results = Article.all.select do |article|
            article.author == self
        end
        magazine = results.collect do |article|
            article.magazine
          end
          magazine

  end
    # Article.article.select do |magazine|
    #   author.magaine

      #self in this method refers to author
      # instance

    #I am now looking for mazines that
    # have my articles
    # variable.select do |magazine|
    #   x.magazine
    # end
    #I then have to see what magazine


    #self in this method refers to author
    # instance


  def add_article(title, magazine)
    #going to create a new article when
    # given title and magazine
    #I have to be sure that when creating
    #an article I give it a title,author,magazine
    Article.new(title, magazine,author)
  end
  #
  def find_specialties
    #1step: need to get access to magazines
    #so I need to iterate over Articles
     Articles.all.collecting do |article|
      if article.author == self
    #2nd step: get magazine instances
    article.magazines
    #that I(author) have written in
    #make sure this == self
    # (which is author instance)
    # .author
    #3nd step: get the categories(return)

# #Accidently did an extra method for looking
# for articles, and didnt get a
#   chance to finish last method


        end
      end
    end

end
