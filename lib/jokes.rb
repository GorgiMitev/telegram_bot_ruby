require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Jokes 
    def initialize
        @joke_values = make_request
    end
    def random_joke
        @joke_values = @joke_values.sample
    end
    
    private 
    def make_request
        url = URI('https://api.yomomma.info')
        JSON.parse.escape(Net::HTTP.get(url))
    end
end