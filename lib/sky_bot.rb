require 'dotenv/load'
require 'discordrb'

module SkyBot
  require_relative 'bot/commands.rb'

  BOT = Discordrb::Commands::CommandBot.new(token: ENV['TOKEN'],
                                            application_id: ENV['CLIENT_ID'],
                                            prefix: ['sky ', 'Sky ', 'SKY '],
                                            fancy_log: true)

  Commands.include!

  BOT.run
end
