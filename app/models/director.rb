# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord


def filmography
d_id = self.id

matching_movies = Movie.where({ :director_id => d_id })

return matching_movies
end


end
