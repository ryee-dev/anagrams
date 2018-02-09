class Check_anagrams

  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def rearrange(word)
    letters = word.split("")
    sorted = letters.sort
    conform = sorted.map(&:downcase)
  end

  def are_anagrams(word_1, word_2)
    word_1 = "dgd"
    word_2 = "god"
    sorted_1 = rearrange(word_1)
    sorted_2 = rearrange(word_2)
    # if (((sorted_1 & ['a', 'e', 'i', 'o', 'u', 'y']).any? == false) && (sorted_2 & ['a', 'e', 'i', 'o', 'u', 'y']).any? == false)
    #   "Both words are not real words."
    if ((sorted_1 & ['a', 'e', 'i', 'o', 'u', 'y']).any? == false)
      "The first word is not a real word."
    # elsif ((sorted_2 & ['a', 'e', 'i', 'o', 'u', 'y']).any? == false)
    #   "The second word is not a real word."
    elsif (sorted_1 == sorted_2)
      "These words are anagrams."
    else
      "These words are NOT anagrams."
    end
  end
end
