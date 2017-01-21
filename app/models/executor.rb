class Executor < ApplicationRecord
  belongs_to :request
  belongs_to :employee
  
  validates :executortype, presence: true
end
