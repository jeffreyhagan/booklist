class Activity < ActiveRecord::Base
  has_and_belongs_to_many :books
  has_many :recommendations

  acts_as_votable
end