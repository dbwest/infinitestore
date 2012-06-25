
class StoreController < ApplicationController
	def index
		@count = 4
		@products = Product.order(:title)
		@cart = current_cart
	end
end
