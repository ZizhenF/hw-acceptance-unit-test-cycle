class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def searchdirector(director_name)
    self.find_by director(director_name)
  end
end
