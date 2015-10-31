class Tagging < ActiveRecord::Base
  belongs_to :minister
  belongs_to :post
end
