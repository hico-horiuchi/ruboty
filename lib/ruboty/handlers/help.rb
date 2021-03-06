module Ruboty
  module Handlers
    class Help < Base
      on(
        /help( me)?(?: (?<filter>.+))?\z/i,
        name: "help",
        command: "help [me] [<filter>]",
        description: "Show this help message",
      )

      def help(message)
        Ruboty::Actions::Help.new(message).call
      end
    end
  end
end
