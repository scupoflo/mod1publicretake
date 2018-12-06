class Magazine
  attr_accessor :name, :category

@@all=[]
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
      @@all
  end

  def self.find_by_name(name)
      self.find do |name|
        self.name == self
    end
  end

  def article_titles
    #I want to grab a magazine instance
    # object
    #Magazine is self
    # get all the articles
    # in this magazine
    # iterate over article class
    Article.all.collect do |article|
      #if I'm in my magazine return
      if article.magazine == self
      # article titles
      article.title
          end
        end
      end
    #grab the title of all articles

    # articles= self.articles
    # articles.collect do |articles|
    #   articles.title
  end
