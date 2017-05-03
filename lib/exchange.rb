require 'rest-client'
require 'json'

module Currency
  def self.exchange(currency, currency_destination, quantity)
    begin
	    res = RestClient.get("http://api.fixer.io/latest?base=#{currency}&symbols=#{currency_destination}")
	    value = JSON.parse(res.body)['rates'][currency_destination]
	    (value.to_f * quantity.to_f).round(2)
    rescue
      return 'Problem in Conversion'
    end
  end
end
