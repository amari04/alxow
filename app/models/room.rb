class Room < ApplicationRecord
  has_one :room_buildings
  has_one :students
  has_many :inventaries
  has_one :visitors
  
   validates :count_living_space, presence: true
   validates :square, presence: true
   validates :bathroom, presence: true
   validates :toilet, presence: true
end
