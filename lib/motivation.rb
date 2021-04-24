require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot'

# Description/Explanation of Motivaton class which generates random motivation quotes
class Motivation
  @quote_values = @make_request

  def random_quote
    @quote_values = @quote_values.sample
  end

  def make_request
    url = URI('https://type.fit/api/quotes')
    JSON.parse(Net::HTTP.get(url))
  end
end
