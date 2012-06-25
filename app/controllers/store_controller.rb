
class StoreController < ApplicationController
	def index
		@count = 3
		@products = Product.order(:title)
		@cart = current_cart
	end
end
