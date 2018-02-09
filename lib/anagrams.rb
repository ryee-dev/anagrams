class Check_anagrams

  def initialize(word_1, word_2)
    # @word_1 = word_1
    # @word_2 = word_2
    word_1 = "dog"
    word_2 = "god"
  end

  def rearrange(word)
    letters = word.split("")
    sorted = letters.sort
    sorted
  end

  def are_anagrams(word_1, word_2)
    sorted_1 = rearrange(word_1)
    sorted_2 = rearrange(word_2)
    if (sorted_1 == sorted_2)
      "These words are anagrams"
    else
      "These words are NOT anagrams"
    end
  end
end
