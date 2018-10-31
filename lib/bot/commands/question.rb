module SkyBot
  module Commands
    module Question
      extend Discordrb::Commands::CommandContainer

      answers = [
        "The Queen says NO",
        "WE GUCCI",
        "POHTAHTOHSSSSS",
        "The POHTAHTOHS ARE SHINING ON YOU TODAY",
        "I suck at this game",
        "Woah what that makes no sense",
        "MOAR POHTAHTOHSSSSS",
        "Love exists"
      ]

      command(:question, description: 'Ask Queen Sky for a Decision') do |event, *question|
        unless question.length > 0
          event << "WTF, Ask a question yo"
          return
        end
        event << "Q: " + question.join(" ")
        event << "A: " + answers.sample
      end
    end
  end
end
