class Product < ActiveRecord::Base
  attr_accessible :category, :manufacturer, :price, :title, :photo, :rating

  has_many :lineitems
	has_many :orders,  :through => :lineitems
	 has_many :reviews, :dependent => :destroy

	 def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['title LIKE  ?', search_condition])

end

def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['category LIKE  ?', search_condition])
end

	 def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['manufacturer LIKE  ?', search_condition])

end
end