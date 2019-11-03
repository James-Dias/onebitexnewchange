require 'rest-client'
require 'json'

class ExchangeService
  def initialize(source_currency, target_currency, amount)
    @source_currency = source_currency
    @target_currency = target_currency
    @amount = amount.to_f
  end

  def perform
    begin
      exchange_api_url = Rails.application.credentials[Rails.env.to_sym][:currency_api_url]
      exchange_api_key = Rails.application.credentials[Rails.env.to_sym][:currency_api_key]

      url = "#{exchange_api_url}?q=#{@source_currency}_#{@target_currency}&compact=ultra&apiKey=#{exchange_api_key}"
      res = RestClient.get url
      value = JSON.parse(res.body)["#{@source_currency}_#{@target_currency}"].to_f

      result =  @amount * value

      ActiveSupport::NumberHelper.number_to_currency(result, precision: 10, unit: "", strip_insignificant_zeros: true, separator: ",", delimiter: ".")
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
