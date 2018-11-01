module SkyBot
  module Commands
    module Quote
      extend Discordrb::Commands::CommandContainer

      quotes = [
        "I'M COMING TO VISIT",
        "I AM NOT MEAN",
        "AHAHAHAHAHAHA",
        "Speaking the language of love",
        "NEXT LEVEL LOVE",
        "YOU ALWAYS THE WIFEY",
        "I AM NEVER ALONE CAUSE YALL ARE MY FAMILY",
        "Well if shes going to hell.. meet you there?",
        "WE GUCCI",
        "I suck at this game",
        "Big words are a NO",
        "Woah what that makes no sense",
        "coreigh quote",
        "I am disappearing nowww",
        "Lemme babysit with you kidsss",
        "I love all :heart:",
        "Physically wifey AHAHA",
        "I have the G just no one to share it with sadly",
        "Pohtahtohs and bubble tea :v:",
        "where's the icing?"
      ]

      command(:quote, description: 'Quote Sky') do |event, boss, difficulty, **_|
        event << quotes.sample
      end
    end
  end
end
