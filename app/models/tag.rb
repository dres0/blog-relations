class Tag < ApplicationRecord
  #Relationships
  has_and_belongs_to_many :posts
end
