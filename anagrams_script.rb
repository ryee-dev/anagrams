#!/usr/bin/ruby
class Anagrams_and_Antigrams

  def initialize (word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def is_palindrome (word_1, word_2)
    downcased_1 = word_1.downcase
    downcased_2 = word_2.downcase
    backwards_1 = downcased_1.gsub(/[^A-Z^a-z]/, '').chars.reverse.join("")
    backwards_2 = downcased_2.gsub(/[^A-Z^a-z]/, '').chars.reverse.join("")

    if downcased_1 == backwards_1 && downcased_2 == backwards_2
      " AND palindromes."
    elsif downcased_2 == backwards_2
      " & the second word is a palindrome."
    elsif downcased_1 == backwards_1
    " & the first word is a palindrome."
    else
      " & there are no palindromes."
    end
  end

  def anagram_antigram(word_1, word_2)
    sorted_1 = word_1.gsub(/[^A-Z^a-z]/, '').downcase.chars.sort
    sorted_2 = word_2.gsub(/[^A-Z^a-z]/, '').downcase.chars.sort
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']

    if ((sorted_1 & vowels).any? == false) && (sorted_2 & vowels).any? == false
      "Both words are not real words"
    elsif (sorted_1 & vowels).any? == false
      "The first word is not a real word"
    elsif (sorted_2 & vowels).any? == false
      "The second word is not a real word"
    elsif (sorted_1 & sorted_2).any? == false
      "These words are antigrams"
    elsif sorted_1 == sorted_2
      "These words are anagrams"
    else
      "These words are NOT anagrams"
    end
  end
end

puts ""
puts "enter first word: "
word_1 = gets.chomp
puts ""

puts "enter second word: "
word_2 = gets.chomp
puts ""

puts Anagrams_and_Antigrams.new(word_1, word_2).anagram_antigram(word_1, word_2) + Anagrams_and_Antigrams.new(word_1, word_2).is_palindrome(word_1, word_2)
puts ""
