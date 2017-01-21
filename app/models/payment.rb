class Payment < ApplicationRecord
  belongs_to :student
  belongs_to :worker
  
  validates :cost, presence: true
  validates :status, presence: true
end
