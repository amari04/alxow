class Building < ApplicationRecord
  has_many :employee
  has_one :room_building
  
   validates :address, presence: true
   validates :floor, presence: true
end
