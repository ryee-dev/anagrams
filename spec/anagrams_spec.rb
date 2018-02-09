require('rspec')
require('anagrams')
require('pry')

describe('#anagrams') do
  it("verifies whether or not the two words are anagrams") do
    expect(Check_anagrams.new(word_1, word_2)).to(eq("These words are anagrams"))
  end
end
