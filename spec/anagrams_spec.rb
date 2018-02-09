require('rspec')
require('anagrams')
require('pry')

describe('#anagrams') do
  it("verifies whether or not the two words are anagrams") do
    expect(Check_anagrams.new("dog", "god").are_anagrams("dog", "god")).to(eq("These words are anagrams."))
  end

  it("accounts for words that have varying capitalizations") do
    expect(Check_anagrams.new("Dog", "God").are_anagrams("Dog", "God")).to(eq("These words are anagrams, regardless of case"))
  end
end
