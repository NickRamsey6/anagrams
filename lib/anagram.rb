require 'pry'
require 'fileutils'


class Anagram < String
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
  @word1 = word1
  @word2 = word2
  end

  def anagram_check

    @word1 = @word1.tr("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "").downcase().split(//).sort()
    @word2 = @word2.tr("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "").downcase().split(//).sort()

    vowels = ['a', 'e', 'i', 'o', 'u', 'y']

    common_letter_array1 = vowels & @word1
    common_letter_array2 = vowels & @word2

    if common_letter_array1.length() == 0
      return 'Your first word is not a word'
    elsif common_letter_array2.length() == 0
      return 'Your second word is not a word'

    elsif @word1 == @word2
      return 'These words are anagrams'

    else @word1 & @word2 = []
      return 'These words are antigrams'
    end
  end
end
