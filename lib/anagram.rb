require 'pry'
require 'fileutils'


class Anagram < String
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
  @word1 = word1
  @word2 = word2
  end

  def anagram_check

    #remove punctuation, spaces, standardize casing, split word into an array by letter and sort that array alphabetically
    @word1 = @word1.tr("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "").downcase().split(//).sort()
    @word2 = @word2.tr("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "").downcase().split(//).sort()

    vowels = ['a', 'e', 'i', 'o', 'u', 'y']

    #check if the words are actually words, meaning they have at least one vowel
    common_letter_array1 = vowels & @word1
    common_letter_array2 = vowels & @word2

    if common_letter_array1.length() == 0
      return 'You need to input real words'
    elsif common_letter_array2.length() == 0
      return 'You need to input real words'

    #check if the words are anagrams (letter arrays should match)
    elsif @word1 == @word2
      return 'These words are anagrams'

    #check if the words are antigrams (no matching letters)
    else @word1 & @word2 = []
      return 'These words are antigrams'
    end
  end
end
