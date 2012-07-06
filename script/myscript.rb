@products = Product.all
@counter = 0
@products.each do |product|
	job = Blitline::Job.new(product.image_url)
	job.application_id = 'r1AQjjrAk-LOGD72nxoGLA'
	thumb_function = job.add_function("resize_to_fill", {:width => 67, :height => 100})
	thumb_function.add_save("my_image_#{@counter}")
	blitline_service = Blitline.new
	blitline_service.jobs << job
	product.thumb_url = blitline_service.post_jobs["results"][0]["images"][0]["s3_url"]
	product.save
#	Thumbnail.create(:thumb_url => blitline_service.post_jobs["results"][0]["images"][0]["s3_url"])
	#Thumbnail.create(:thumb_url => blitline_service.post_jobs["results"][0]["images"][0]["s3_url"])
	@counter = @counter+1
end
