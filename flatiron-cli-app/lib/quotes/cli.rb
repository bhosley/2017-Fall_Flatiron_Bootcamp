class Quotes::CLI

    def call
        puts WELCOME
        options
        puts "\nThank you for using Quotes, Good Bye.\n\n"
    end

    def options
        input = nil
        while input != "exit"
            puts QUOTEMENU
            input = gets.strip.downcase
            case input
            when "1"
                Quotes::Quote.inspirational
            when "2"
                Quotes::Quote.love
            when "3"
                Quotes::Quote.nature
            when "4"
                Quotes::Quote.art
            when "5"
                Quotes::Quote.funny
            when "exit"
                return
            else
                puts INPUTSASS
            end
            puts "\nWould you like another? Y/N\n"
            input = gets.strip.downcase
            if input == "n"
                input = "exit"
            else
                input = nil
            end
        end
    end

    WELCOME =<<-DOC
\nWelcome to Command Line Quotes!\n
Your source for psuedo-inspirational quotes from
the all-knowing internet.\n
    DOC

    QUOTEMENU =<<-DOC
\nWhat kind of quote would you like?
    1. Inspirational
    2. Love
    3. Nature
    4. Art
    5. Funny
    Type "exit" to exit.\n
    DOC

    INPUTSASS =<<-DOC
\nHere's a quote for ya:
"Learn to read and follow directions"\n
    DOC


end