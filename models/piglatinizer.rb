class PigLatinizer
  attr_accessor :words

  # def initialize(string)
  #   @string = string
  # end

  #Onceway uponway away imetay andway away eryvay oodgay imetay


  def piglatinize(string)
    vowels = ["a","e","i","o","u"]
      first_vowel_index = string.split(//).index {|l| vowels.include?(l.downcase)}
      if vowels.include?(string.split(//).first.downcase)
        string + "way"
      else
        rest = string.slice(first_vowel_index..-1)
        beginning = string.slice(0..first_vowel_index-1)
        rest + beginning + "ay"
      end
  end

  def to_pig_latin(string)
    string.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

end
