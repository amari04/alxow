class Request < ApplicationRecord
  belongs_to :person
  has_one :executors
  
  validates :description, presence: true
  validates :status, presence: true
  validates :kind, presence: true
end
