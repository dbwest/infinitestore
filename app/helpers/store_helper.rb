module StoreHelper
	def new_row_every_3 (&block)
		attributes = {}
		count = 3
	    if (count%3==0)
		    content_tag("div", :class => "row", &block)
		end
    end
end
