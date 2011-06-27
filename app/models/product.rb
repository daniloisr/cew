class Product < ActiveRecord::Base
  scope :by_category, lambda {|category|
    where('category = :category', {:category => category})
  }

  def self.categories
    self.find(:all, :select => "DISTINCT category").map{ |m| m.category }
  end
end
