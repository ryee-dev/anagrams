require('rspec')
require('anagrams')
require('pry')

describe('#anagrams') do
  it("verifies whether or not the two words are anagrams") do
    expect(Check_anagrams.new("dog", "god").are_anagrams("dog", "god")).to(eq("These words are anagrams."))
  end

  it("accounts for words that have varying capitalizations") do
    expect(Check_anagrams.new("Dog", "God").are_anagrams("Dog", "God")).to(eq("These words are anagrams."))
  end

  it("checks whether or not the first word is real") do
    expect(Check_anagrams.new("dgd", "god").are_anagrams("dgd", "god")).to(eq("The first word is not a real word."))
  end

  it("checks whether or not the second word is real") do
    expect(Check_anagrams.new("dgd", "god").are_anagrams("dog", "gdg")).to(eq("The second word is not a real word."))
    end

  it("checks if either word is real") do
    expect(Check_anagrams.new("dgd", "gdg").are_anagrams("dgd", "gdg")).to(eq("Both words are not real words."))
    end


  end
end
