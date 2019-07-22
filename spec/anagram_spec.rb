require 'pry'
require 'anagram.rb'

anagram = Anagram.new('', '')
# anagram.word1 = 'listen'
# anagram.word2 = 'silent'

describe('anagram') do
  it('check if two words are anagrams') do
    anagram.word1 = 'listen'
    anagram.word2 = 'silent'
    expect(anagram.anagram_check).to(eq(true))
  end

  it('standardize casing for words entered') do
    anagram.word1 = 'CaLl'
    anagram.word2 = "allc"
    expect(anagram.anagram_check).to(eq(true))
  end

  it('check if inputted string is actually words') do
    anagram.word1 = 'dxzvmn'
    expect(anagram.word_check).to(eq(false))
  end

  it('check if two words are antigrams') do
    anagram.word1 = 'dong'
    anagram.word2 = 'sausage'
    expect(anagram.antigram_check).to(eq(true))
  end

  it('check if multiple words entered are anagrams') do
    anagram.word1 = 'im a lasanga hog'
    anagram.word2 = 'go hang a salami'
    expect(anagram.anagram_check).to(eq(true))
  end
end
