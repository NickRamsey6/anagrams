require 'pry'
require 'fileutils'


class String
  # def initialize()
  #
  # end
  def anagramz
      input_word = self.downcase()
      p input_word
  end
end

p 'Enter first word'
input = gets.chomp
input.anagramz
# p 'Enter second word'
# word2 = gets.chomp
