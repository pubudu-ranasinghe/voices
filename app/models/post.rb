class Post < ActiveRecord::Base
  belongs_to :user

  has_many :taggings
  has_many :ministers, through: :taggings
  belongs_to :category

  acts_as_votable

  has_attached_file :cover, styles: { medium: "1200x500#", thumb: "300x250#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
