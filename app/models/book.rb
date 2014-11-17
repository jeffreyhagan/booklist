class Book < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :recommendations
  has_many :activities, through: :recommendations
end
