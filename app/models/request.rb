class Request < ApplicationRecord
  belongs_to :person
  has_one :executors
end
