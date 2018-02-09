class Anagrams_and_Antigrams

  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def rearrange(word)
    letters = word.split("")
    sorted = letters.sort
    conform = sorted.map(&:downcase)
  end

  def anagram_antigram(word_1, word_2)
    word_1 = "hi"
    word_2 = "bye"
    sorted_1 = rearrange(word_1)
    sorted_2 = rearrange(word_2)
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U', 'y', 'Y']

    if (((sorted_1 & vowels).any? == false) && (sorted_2 & vowels).any? == false)
      "Both words are not real words."
    elsif ((sorted_1 & ['a', 'e', 'i', 'o', 'u', 'y']).any? == false)
      "The first word is not a real word."
    elsif ((sorted_2 & ['a', 'e', 'i', 'o', 'u', 'y']).any? == false)
      "The second word is not a real word."
    elsif ((sorted_1 & sorted_2).any? == false)
      "These words are antigrams."
    elsif (sorted_1 == sorted_2)
      "These words are anagrams."
    else
      "These words are NOT anagrams."
    end
  end
end
