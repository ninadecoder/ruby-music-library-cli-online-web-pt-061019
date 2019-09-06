class Artist
  attr_accessor :name, :songs
  @@all =[]
  
  def initialize(name)
    @name = name
    @songs  = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self unless @@all.include?(self)
  end
  
   def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
  
  def add_song(song)
    
  end
end
