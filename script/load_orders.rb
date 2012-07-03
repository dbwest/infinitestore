Order.transaction do
	(1..100).each do |i|
		Order.create(:name => "Customer #{i}", :address => "#{i} Main St", :email => "customer-#{i}@turr.ide", :pay_type => "Mastercard")
	end
end