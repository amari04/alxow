class Bedding < ApplicationRecord
  belongs_to :person
  
   validates :count, presence: true
   validates :kind, presence: true

end
