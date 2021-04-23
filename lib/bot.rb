require 'telegram/bot'
require_relative 'motivation.rb'
require_relative 'jokes.rb'

class Bot
  def initialize
    token = '1767471390:AAExulZahTiJBR7q_lckVAcseWbbKRBeQfc'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'

          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}. Welcome to the motivational chat bot, with a sense of humor.This chat bot is to keep you motivated and entertained. Use  /start to start the bot,  /stop to end the bot, /motivation to get a diffrent motivational quote everytime you request for it or /jokes to get a fat momma joke every time you request for it")

        when '/stop'

          bot.api.send_message(chat_id: message.chat.id, text: "Goodbye, #{message.from.first_name}. Have a nice day!", date: message.date)

        when '/motivation'

          motivation_quote = Motivation.new.random_quote
          bot.api.send_message(chat_id: message.chat.id, text: (motivation_quote['text']).to_s, date: message.date)

        when '/jokes'

          joke_quote = Jokes.new.make_request
          bot.api.send_message(chat_id: message.chat.id, text: (joke_quote['joke']).to_s, date: message.date)
        else

          bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop , /motivation or /jokes")
        end
      end
    end
  end
end
