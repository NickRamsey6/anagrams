require 'pry'
require 'fileutils'


class String
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
  @word1 = word1
  @word2 = word2
  end
  def casing
      @word1 = @word1.downcase()
      # p input_word
  end

  def anagram
  #   # p self
  #   # p self.concat(i)
  #   # gram = self.concat(i).match('(.)\1')[0]
  #   # p gram
  #
    @word1 = @word1.tr("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "").split(//).sort()
    @word2 = @word2.tr("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "").split(//).sort()
  #   # p w1
  #   # p w2
  #
    if @word1 == @word2
      true
    end
  #   # if gram = i
  #   #   p i
  #   #   # p gram.chars.sort.join()
  #   #   # p i.chars.sort.join()
  #   # # if gram.chars.sort.join = i.chars.sort.join
  #   #   true
  #   # end
  end

  def word_check
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    @word1 = @word1.split(//)
    common_letter_array = vowels & @word1
  #   p common_letter_array.length()
  #   # p w1
    if common_letter_array.length() != 0
  #     # p vowels & w1
      true
    end
    false
  end

  def antigram
    @word1 = @word1.split(//).sort()
    @word2 = @word2.split(//).sort()
    antigram_array = @word1 & @word1
    if antigram_array.length() == 0
      false
    end
    true
  end
end



# p 'Enter first word'
# input = gets.chomp
# input.anagramz
# p 'Enter second word'
# word2 = gets.chomp
