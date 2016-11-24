class RoomBuilding < ApplicationRecord
  belongs_to :room
  belongs_to :building
end
