class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def same_directors
    Movie.where("director =?", self.director)
  end
  
end
