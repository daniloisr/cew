class Product < ActiveRecord::Base

  def self.categories
    self.find(:all, :select => "DISTINCT category").map{ |m| m.category }
  end
end
