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
    # p self
    # p self.concat(i)
    # gram = self.concat(i).match('(.)\1')[0]
    # p gram

    w1 = self.split(//).sort()
    w2 = i.split(//).sort()
    p w1
    p w2

    if w1 == w2
      true
    end
    # if gram = i
    #   p i
    #   # p gram.chars.sort.join()
    #   # p i.chars.sort.join()
    # # if gram.chars.sort.join = i.chars.sort.join
    #   true
    # end
  end

  # def word?()
  #
  # end
end

# p 'Enter first word'
# input = gets.chomp
# input.anagramz
# p 'Enter second word'
# word2 = gets.chomp
