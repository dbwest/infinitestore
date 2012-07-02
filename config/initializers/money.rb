require 'update_rates'
include UpdateRates
UpdateRates::Bank.update_rates_if_changed
