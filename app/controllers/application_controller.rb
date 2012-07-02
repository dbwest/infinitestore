class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_for_currency_updates

  def check_for_currency_updates
    UpdateRates::Bank.update_rates_if_changed
  end

  private

    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

protected


end
