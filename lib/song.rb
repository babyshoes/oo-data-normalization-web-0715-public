require 'pry'

class Song
  
  attr_accessor :artist, :title

  # def title=(title)
  #   @title = title
  # end

  # def artist=(artist)
  #   @artist = artist
  # end

  def serialize
    sanitized_title = (@title.split.map &:downcase).join("_")
    open("./tmp/#{sanitized_title}.txt", 'w') {|f| f << "#{@artist.name} - #{@title}"}
  end

end
