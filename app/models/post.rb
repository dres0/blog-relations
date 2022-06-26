class Post < ApplicationRecord
  #Relationships
  # has_and_belongs_to_many :tags
  has_many :post_tags
  has_many :tags, through: :post_tags #, dependent: destroy

  validates :author, presence: true
end
