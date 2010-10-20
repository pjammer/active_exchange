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
  def test_retrieve_data_returns_a_200
    actual = ActiveExchange.retrieve_data
    assert_equal("200", actual.root.attributes["responsecode"])
  end
end
