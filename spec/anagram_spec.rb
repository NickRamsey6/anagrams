require 'pry'
require 'anagram.rb'

string = String.new('', '')
# string.word1 = 'listen'
# string.word2 = 'silent'

describe('anagram') do
  it('check if two words are anagrams') do
    string.word1 = 'listen'
    string.word2 = 'silent'
    expect(string.anagram).to(eq(true))
  end

  it('standardize casing for words entered') do
    string.word1 = 'CaLl'
    expect(string.casing).to(eq('call'))
  end

  it('check if inputted strings are actually words') do
    string.word1 = 'dxzvmn'
    expect(string.word_check).to(eq(false))
  end

  it('check if two words are antigrams') do
    string.word1 = 'dong'
    string.word2 = 'sausage'
    expect(string.antigram).to(eq(true))
  end

  it('check if multiple words entered are anagrams') do
    string.word1 = 'im a lasanga hog'
    string.word2 = 'go hang a salami'
    expect(string.anagram).to(eq(true))
  end
end
