class Room < ApplicationRecord
  has_one :room_buildings
  has_one :students
  has_many :inventaries
  has_one :visitors
end
