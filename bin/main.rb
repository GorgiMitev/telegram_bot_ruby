require_relative '../lib/bot.rb'
require_relative '../lib/motivation.rb'

puts 'Hello! , Welcome to motivational/funny telegram bot'
puts '-----------------------------------------'
puts 'This is a bot to help you stay motivated during your day by qiving you motivational quotes'
puts 'The bot can also keep you laughing by providing you with fat mama jokes'
puts 'This bot is here to insipre you when your down and unmotivated'
sleep(0.8)
puts '------------------------------------------'
puts '...loading the bot is now online... use ctrl-c to stop the bot'
puts '...give it a few seconds'
Bot.new
