class Post < ActiveRecord::Base
  belongs_to :user

  has_many :taggings
  has_many :ministers, through: :taggings

  acts_as_votable
end
