class Inventary < ApplicationRecord
  belongs_to :room
  
   validates :invent_numb, presence: true
   validates :kind, presence: true
   validates :status, presence: true
end
