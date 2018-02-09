class Anagrams_and_Antigrams

  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end


  def rearrange(word)
    new_word = word.gsub(/[^A-Z^a-z]/, '')
    letters = new_word.split("")
    conform = letters.map(&:downcase)
    sorted = conform.sort
  end

  def reverse_order(word)
    new_word = word.gsub(/[^A-Z^a-z]/, '')
    letters = new_word.split("")
    conform = letters.map(&:downcase)
    backwards = conform.reverse.join("")
  end

  def anagram_antigram(word_1, word_2)
    sorted_1 = rearrange(word_1)
    sorted_2 = rearrange(word_2)
    backwards_1 = reverse_order(word_1)
    backwards_2 = reverse_order(word_2)

    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U', 'y', 'Y']

    if (((sorted_1 & vowels).any? == false) && (sorted_2 & vowels).any? == false)
      "Both words do not have vowels."
    elsif ((sorted_1 & vowels).any? == false)
      "The first word is not a real word."
    elsif ((sorted_2 & vowels).any? == false)
      "The second word is not a real word."
    elsif (word_1 == backwards_1 && word_2 == backwards_2)
      "Both words are palindromes"
    elsif (word_1 == backwards_1)
      "The first word is a palindrome."
    elsif (word_2 == backwards_2)
      "The second word is a palindrome."
    elsif ((sorted_1 & sorted_2).any? == false)
      "These words are antigrams."
    elsif (sorted_1 == sorted_2)
      "These words are anagrams."
    else
      "These words are NOT anagrams."
    end
  end
end
