class Visitor < ApplicationRecord
  belongs_to :person
  validates :start_date, presence: true
  validates :finish_date, presence: true
  validates :accommodation, presence: true
end
