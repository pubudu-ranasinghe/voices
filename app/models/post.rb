class Post < ActiveRecord::Base
  belongs_to :user

  has_many :taggings
  has_many :ministers, through: :taggings
  belongs_to :category
  has_many :updates

  acts_as_votable

  has_attached_file :cover,
                     :styles => {
                       :hero => "1150x420#",
                       :thumb => "350x300#" },
                     :convert_options => {
                       :hero => "-strip",
                       :thumb => "-quality 95 -strip -gravity center" },
                     :default_url => "/images/:style/missing.png"
     validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
