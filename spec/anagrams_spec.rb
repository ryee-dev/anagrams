require('rspec')
require('anagrams')
require('pry')

describe('#anagrams') do
  # it("verifies whether or not the two words are anagrams") do
  #   expect(Anagrams_and_Antigrams.new("dog", "god").anagram_antigram("dog", "god")).to(eq("These words are anagrams."))
  # end
  #
  # it("accounts for words that have varying capitalizations") do
  #   expect(Anagrams_and_Antigrams.new("Dog", "God").anagram_antigram("Dog", "God")).to(eq("These words are anagrams."))
  # end
  #
  # it("checks whether or not the first word is real") do
  #   expect(Anagrams_and_Antigrams.new("dgd", "god").anagram_antigram("dgd", "god")).to(eq("The first word is not a real word."))
  # end
  #
  # it("checks whether or not the second word is real") do
  #   expect(Anagrams_and_Antigrams.new("dgd", "god").anagram_antigram("dog", "gdg")).to(eq("The second word is not a real word."))
  # end
  #
  # it("checks if either word is real") do
  #   expect(Anagrams_and_Antigrams.new("dgd", "gdg").anagram_antigram("dgd", "gdg")).to(eq("Both words are not real words."))
  # end

  it("checks if words are antigrams") do
    expect(Anagrams_and_Antigrams.new("hi", "bye").anagram_antigram("hi", "bye")).to(eq("These words are antigrams."))
  end
end
