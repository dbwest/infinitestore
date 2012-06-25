module StoreHelper
	def new_row (&block)
	    if (@count%4==0)
	    	@count += 1
		    content_tag("div", :class => "row", &block)
		else
			@count += 1
		end	
	    content_tag("div", &block)
    end
end
