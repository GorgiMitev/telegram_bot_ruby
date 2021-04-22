require 'telegram/bot'

token = "1767471390:AAExulZahTiJBR7q_lckVAcseWbbKRBeQfc"

Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, I am a bot!")
    end 
end