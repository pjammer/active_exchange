require "cgi"
require "uri"
require "net/https"
require "rexml/document"
require "date"

module ActiveExchange
  # Originially massaged from the web post of http://geoff.evason.name/2008/10/27/simple-currency-conversion-rate-api-consumption-for-ruby-rails/
  # The active_exchange gem is used to go out to XavierMedia and pull quotes for the currencies they offer.
  
  # We'll need to have a task to look for new data and parse it into DB, to cut down calls.
  def self.retrieve_data(date = Date.today - 1)
    url = URI.parse("http://api.finance.xaviermedia.com/api/#{date.year}/#{date.strftime("%m")}/#{date.strftime("%d")}.xml")
    resp = Net::HTTP.get(url)
    xml  = REXML::Document.new(resp)
  end
  
  def self.get_daily_data
    #Get data
    daily_rates = ActiveExchange.retrieve_data
    #put into database.  Run the migrations, obviously, before you do this.
    if daily_rates.root.attributes["responsecode"] == "200"
      daily_rates.elements.each("//exchange_rates/fx") { |element|
        ExchangeRate.create(:currency => element.elements[1].text, :rate => element.elements[2].text)
      }
    end
  end
  
  #used to find an exchange rate on a certain day. this will make a call to the api.
  def self.exchange_rate_on(date, currency_from = "USD", currency_to = "AUD")
    xml = retrieve_data(date)
    us_to_eur = 1.0
    au_to_eur = 1.0
    xml.elements.each("//exchange_rates/fx") { |el|
      if el.elements[1].text == currency_from
        us_to_eur = el.elements[2].text.to_f rescue 1.0
      end
      if el.elements[1].text == currency_to
        au_to_eur = el.elements[2].text.to_f rescue 1.0
      end
    }

    return us_to_eur/au_to_eur
  end
end
