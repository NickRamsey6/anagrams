require 'pry'
require 'anagram.rb'

describe('anagram') do
  # it('check if two words are anagrams') do
  #   expect("call, all".anagram?()).to(eq(true))
  # end

  it('standardize casing for words entered') do
    expect("CaLl".anagramz()).to(eq("call"))
  end

  # it('check if inputted strings are actually words') do
  #   expect("bzhn".word?()).to(eq(false))
  # end

  # it('check if two words are antigrams') do
  #   expect("hi, bye".antigram?()).to(eq(true))
  # end

  # it('check if multiple words entered are anagrams') do
  #   expect("go hang a salami, hog".anagram?()).to(eq(true))
  # end
end