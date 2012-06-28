class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  def convert_to_euro
    price * 1.5
  end


  private

  def ensure_not_referenced_by_any_line_item
  	if line_items.empty?
  		return true
  	else
  		errors.add(:base, 'Line Items Present')
  		return false
  	end
  end

end
