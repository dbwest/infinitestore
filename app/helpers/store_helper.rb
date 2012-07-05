module StoreHelper
	def new_row (&block)
	    if (@count%3==0)
	    	@count += 1
		    content_tag("div", :class => "row", &block)
		else
			@count += 1
		end	
	    content_tag("div", &block)
    end
    def jumbotron (&block)
    	content_tag("header", :class => "jumbotron subhead offset2", &block)
    end
    

end
