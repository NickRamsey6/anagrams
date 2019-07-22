require 'pry'
require 'anagram.rb'

anagram = Anagram.new('', '')
# anagram.word1 = 'listen'
# anagram.word2 = 'silent'

describe('anagram') do
  it('check if two words are anagrams') do
    anagram.word1 = 'listen'
    anagram.word2 = 'silent'
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end

  it('standardize casing for words entered') do
    anagram.word1 = 'CaLl'
    anagram.word2 = "allc"
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end

  it('check if inputted string is actually words') do
    anagram.word1 = 'dxzvmn'
    anagram.word2 = 'plmn'
    expect(anagram.anagram_check).to(eq('Your first word is not a word'))
  end

  it('check if two words are antigrams') do
    anagram.word1 = 'dim'
    anagram.word2 = 'sausage'
    expect(anagram.anagram_check).to(eq('These words are antigrams'))
  end

  it('check if multiple words entered are anagrams') do
    anagram.word1 = 'im a lasanga hog'
    anagram.word2 = 'go hang a salami'
    expect(anagram.anagram_check).to(eq('These words are anagrams'))
  end
end
