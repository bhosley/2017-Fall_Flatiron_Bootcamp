class Anagram
  attr_accessor :word, :components

  def initialize(word)
    @word = word
    @components = word.split("").sort
  end

  def match(array)
    anagrams = []
    array.each{|item| anagrams << item if item.split("").sort == @components}
    return anagrams
  end
end
