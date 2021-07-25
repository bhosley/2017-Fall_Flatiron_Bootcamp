class Quotes::Quote
    attr_accessor :quotes, :authors

    URL = ("https://www.brainyquote.com/quote_of_the_day")
    @@doc = Nokogiri::HTML(open(URL))

    def self.scrape
        @quote = @@doc.search("a.b-qt").text.split(".")
        @author = @@doc.search("a.bq-aut").map{|s| s.text}
    end

    def self.writer(type, order)
        puts "#{type.capitalize}\n\n #{@quote[order]}. \n\n\t #{@author[order]}\n"
    end

    def self.inspirational
        self.scrape
        self.writer('inspirational', 0)
    end

    def self.love
        self.scrape
        self.writer('love', 1)
    end

    def self.nature
        self.scrape
        self.writer('nature', 3)
    end

    def self.art
        self.scrape
        self.writer('art', 2)
    end

    def self.funny
        self.scrape
        self.writer('funny', 4)
    end
end

