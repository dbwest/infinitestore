module UpdateRates
  class Bank
    def self.update_rates_if_changed
      # if last_updated.nil? || last_updated + 12.hours <= Time.now
        update_rates
      # end
    end

    def self.update_rates
      fetch_rates

      # Take latest available currency rates snapshot
      [0, 1, 2].each do |days|
        date = Date.today - days.days
        next unless Rails.cache.exist?(rate_key(date))

        begin
          rates = Rails.cache.read(rate_key(date))
          Money.default_bank.update_rates_from_s(rates)
        rescue Nokogiri::XML::SyntaxError
          print "error occurred while reading currency rates"
          # our rates seem to be invalid, so clear the cache and retry
          Rails.cache.delete(rate_key(date))
          update_rates
        end

        break
      end
    end

    private
    def self.fetch_rates
      return if Rails.cache.exist?(rate_key)

      print "Updating currency rates ... "
      begin
        Rails.cache.write(rate_key, Money.default_bank.save_rates_to_s)
        puts "finished"
      rescue Exception => ex
        puts "error occurred: #{ex.inspect}"
      end
    end

    def self.rate_key(date = Date.today)
      ["exchange_rates", date.strftime("%Y%m%d")]
    end

    def self.last_updated
      Money.default_bank.last_updated
    end
  end
end