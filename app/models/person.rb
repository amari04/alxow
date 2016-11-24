class Person < ApplicationRecord
  has_one :student
  has_one :guest
  has_one :visitor
  has_many :beddings
  has_many :requests
  has_one :employees
end
