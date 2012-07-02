class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  def convert_to_euro
    eu_bank = EuCentralBank.new
    Money.default_bank = eu_bank
    eu_bank.exchange((price.to_f*100), "USD", "EUR")
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
