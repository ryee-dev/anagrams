require('rspec')
require('anagrams')
require('pry')

describe('#anagrams') do
  it("verifies whether or not the two words are anagrams") do
    is_anagram = Anagrams_and_Antigrams.new("poo", "oop")
    expect(is_anagram.anagram_antigram("dog", "god")).to(eq("These words are anagrams."))
  end

  it("accounts for words that have varying capitalizations") do
    diff_case = Anagrams_and_Antigrams.new("Dog", "God")
    expect(diff_case.anagram_antigram("Dog", "God")).to(eq("These words are anagrams."))
  end

  it("checks whether or not the first word is real") do
    realword_1 = Anagrams_and_Antigrams.new("dgd", "god")
    expect(realword_1.anagram_antigram("dgd", "god")).to(eq("The first word is not a real word."))
  end

  it("checks whether or not the second word is real") do
    realword_2 = Anagrams_and_Antigrams.new("dog", "gdg")
    expect(realword_2.anagram_antigram("dog", "gdg")).to(eq("The second word is not a real word."))
  end

  it("checks if either word has vowels") do
    realwords = Anagrams_and_Antigrams.new("dgd", "gdg")
    expect(realwords.anagram_antigram("dgd", "gdg")).to(eq("Both words do not have vowels."))
  end

  it("checks if words are antigrams") do
    is_antigram = Anagrams_and_Antigrams.new("hi", "bye")
    expect(is_antigram.anagram_antigram("hi", "bye")).to(eq("These words are antigrams."))
  end

  it("removes any non-letter from input") do
    non_letter = Anagrams_and_Antigrams.new("Hi!!! Prson!", "byE!!!")
    expect(non_letter.anagram_antigram("Hi!!! Prson!", "byE!!!")).to(eq("These words are antigrams."))
  end

  it("checks if word_1 is a palindrome") do
    is_palindrome_1 = Anagrams_and_Antigrams.new("racecar", "nil")
    expect(is_palindrome_1.anagram_antigram("racecar", "nil")).to(eq("The first word is a palindrome."))
  end
end
