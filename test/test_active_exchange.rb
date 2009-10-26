require 'helper'

class TestActiveExchange < Test::Unit::TestCase
  def test_it_works
    assert_nothing_thrown do
      actual = ActiveExchange.exchange_rate_on(Date.today, currency_from = "CAD", currency_to = "AUD")
    end
  end
  def test_for_amount_on_oct_seventh
    actual = ActiveExchange.exchange_rate_on(Date.parse("10/07/2009"))
    assert_equal("0.889898255813954", actual.to_s)
  end
end
