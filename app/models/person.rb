class Person < ApplicationRecord
  has_one :student
  has_one :guest
  has_one :visitor
  has_many :beddings
  has_many :requests
  has_one :employees
  
  belongs_to :user
   
   validates :last_name, presence: true
   validates :first_name, presence: true
   validates :birthday, presence: true
   validates :sex, presence: true
   validates :series, presence: true, uniqueness: true
   validates :number, presence: true, uniqueness: true
   validates :organization, presence: true
   validates :pass_date, presence: true
   validates :address, presence: true
end
