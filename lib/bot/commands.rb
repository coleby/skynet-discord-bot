module SkyBot
  module Commands
    Dir["#{File.dirname(__FILE__)}/commands/*.rb"].each { |file| require file }

    @commands = [
      Quote,
      Question
    ]

    def self.include!

      @commands.each do |command|
        SkyBot::BOT.include!(command)
      end
    end
  end
end
