class Worker < ApplicationRecord
has_one :payments

validates :position, presence: true
end
