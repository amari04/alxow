class Employee < ApplicationRecord
   belongs_to :building
   has_and_belongs_to_many :posts
   has_one :executors
end
