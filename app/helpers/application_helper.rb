module ApplicationHelper
	def new_row_every_3
	count = 3
    if (count%3==0)
      attributes["class"] = "row"
    end
    content_tag("div", attributes, &block)
  end
end
