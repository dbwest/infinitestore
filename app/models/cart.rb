class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  current_item = line_items.find_by_product_id(product_id)
  has_many :line_items, dependent: :destroy
  if current_item
  	current_item.quantity += 1
  else
  	current_item = line_items.products.build(product_id: product_id)
  end
  current_item
end
