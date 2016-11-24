class Executor < ApplicationRecord
  belongs_to :request
  belongs_to :employee
end
