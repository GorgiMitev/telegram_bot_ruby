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

          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}.")

        when '/stop'

          bot.api.send_message(chat_id: message.chat.id, text: "Goodbye, #{message.from.first_name}. Have a nice day!", date: message_date)
      end
      end
    end
end
end
