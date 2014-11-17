class Activity < ActiveRecord::Base
  has_many :recommendations
  has_many :books, through: :recommendations
end