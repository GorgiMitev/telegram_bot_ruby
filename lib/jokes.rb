require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Jokes
  @quote_values = nil

  def initialize
    @quote_values = @make_request
  end

  def make_request
    url = URI('https://api.yomomma.info')
    JSON.parse(Net::HTTP.get(url))
  end
end
