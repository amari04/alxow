class Student < ApplicationRecord
  belongs_to :person
  
  validates :medical_certificate, presence: true
end
