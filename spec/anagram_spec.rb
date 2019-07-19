require 'pry'
require 'anagram.rb'

describe('anagram') do
  it('check if two words are anagrams') do
    i = 'silent'
    expect('listen'.anagram(i)).to(eq(true))
  end

  it('standardize casing for words entered') do
    expect('CaLl'.casing()).to(eq('call'))
  end

  it('check if inputted strings are actually words') do
    expect("dxzvmn".word_check()).to(eq(false))
  end

  it('check if two words are antigrams') do
    i = 'dong'
    expect('sauasage'.antigram(i)).to(eq(true))
  end

  # it('check if multiple words entered are anagrams') do
  #   expect("go hang a salami, hog".anagram?()).to(eq(true))
  # end
end
