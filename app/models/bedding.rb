class Bedding < ApplicationRecord
  belongs_to :person
  
   validates :count, presence: true
   validates :type, presence: true

end
