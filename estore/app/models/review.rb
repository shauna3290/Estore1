class Review < ActiveRecord::Base
  attr_accessible :content, :datesent, :product_id, :user_id, :value
   belongs_to :product
  belongs_to :user
  validates_inclusion_of :value, :in => 1..5
end
