require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot'

# Description/Explanation of or Jokes class which generates random quotes
class Jokes
  @quote_values = nil
  @quote_values = @make_request

  def make_request
    url = URI('https://api.yomomma.info')
    JSON.parse(Net::HTTP.get(url))
  end
end
