class Article
  attr_accessor :title, :author, :magazine

@@all=[]
  def initialize(title, magazine,author)
    @title = title
    @author= author
    @magazine= magazine
    @@all << self
  end

  def self.all
      @@all
  end

  # def author
  #   @author
  # end
  #
  # def magazine
  #   @magazine
  # end

end
