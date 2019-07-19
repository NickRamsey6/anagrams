require 'pry'
require 'fileutils'


class String
  # def initialize()
  #
  # end
  def casing
      input_word = self.downcase()
      p input_word
  end

  def anagram(i)
    gram = self.concat(i).match('(.)\1')[0]
    if gram = i
      true
    end
  end
end

# p 'Enter first word'
# input = gets.chomp
# input.anagramz
# p 'Enter second word'
# word2 = gets.chomp
