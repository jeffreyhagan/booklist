class Recommendation < ActiveRecord::Base
  belongs_to :book
  belongs_to :activity

  acts_as_votable
end