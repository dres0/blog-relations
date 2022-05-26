class Post < ApplicationRecord
  #Relationships
  has_and_belongs_to_many :tags
end
