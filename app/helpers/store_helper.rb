module StoreHelper
	def new_row_every_3 (&block)
	    if (@count%3==0)
	    	@count += 1
		    content_tag("div", :class => "row", &block)
		else
			@count += 1
		end	
	    content_tag("div", &block)
    end
end
