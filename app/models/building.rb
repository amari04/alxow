class Building < ApplicationRecord
  has_many :employee
  has_one :room_building
end
