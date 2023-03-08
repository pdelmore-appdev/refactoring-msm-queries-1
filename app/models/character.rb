# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

def movie
my_id = self.movie_id

matching_movies = Movie.where({ :id => my_id})

the_movie = matching_movies.first

return  the_movie
end


def actor
  my_id = self.actor_id

  matching_actors = Actor.where({ :id => my_id})
  
  the_actor = matching_actors.first
  
  return  the_actor

end


end
