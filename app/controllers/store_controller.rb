
class StoreController < ApplicationController
	def index
		@products = Product.find(:all)
	end
end
