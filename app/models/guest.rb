class Guest < ApplicationRecord
  belongs_to :person
  validates :start_date, presence: true
  validates :finish_date, presence: true
  validates :event, presence: true
end
