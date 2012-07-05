class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title

  has_many :line_items

  composed_of :price,
    :class_name => "Money",
    :mapping => [%w(price price), %w(currency currency_as_string)],
    :constructor => Proc.new { |price, currency| Money.new(price || 0, currency || Money.default_currency) },
    :converter => Proc.new { |value| value.respond_to?(:to_money) ? value.to_money : raise(ArgumentError, "Can't convert #{value.class} to Money") }

  before_destroy :ensure_not_referenced_by_any_line_item

  def convert_to_euro
    eu_bank = EuCentralBank.new
    Money.default_bank = eu_bank
    eu_bank.exchange((price.to_f*100), "USD", "EUR")
  end


  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items Present')
      return false
    end
  end

end
