class Inventary < ApplicationRecord
  belongs_to :room
  
   validates :invent_numb, presence: true
   validates :type, presence: true
   validates :status, presence: true
end
