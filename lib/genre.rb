class Genre 
  
  @@all=[]
  
  attr_accessor :name
  def initialize(name)
    @name=name 
    @@all << self 
  end 
 
  def songs 
   Song.all.select{ |song| song.genre==self}
  end 
 
 def self.all
  @@all 
 end 

  def artists
    songs.map{|song| song.artist}
  end 

end 