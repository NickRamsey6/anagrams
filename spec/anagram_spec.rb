require 'pry'
require 'anagram.rb'

anagram = Anagram.new('', '')
# anagram.word1 = 'listen'
# anagram.word2 = 'silent'

describe('anagram') do
  it('check if two words are anagrams') do
    anagram.word1 = 'tar'
    anagram.word2 = 'rat'
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end

  it('standardize casing for words entered') do
    anagram.word1 = 'ElBoW'
    anagram.word2 = "below"
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end

  it('check if inputted string is actually words') do
    anagram.word1 = 'qzxws'
    anagram.word2 = 'plmnjh'
    expect(anagram.anagram_check).to(eq('You need to input real words'))
  end

  it('check if two words are antigrams') do
    anagram.word1 = 'mad'
    anagram.word2 = 'true'
    expect(anagram.anagram_check).to(eq('These words are antigrams'))
  end

  it('check if multiple words entered are anagrams') do
    anagram.word1 = 'go hang a salami'
    anagram.word2 = 'im a lasanga hog'
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end

  it('remove any punctuation or spacing and still check for anagrams') do
    anagram.word1 = '@FUN$eral!'
    anagram.word2 = 'real fun'
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end
end
