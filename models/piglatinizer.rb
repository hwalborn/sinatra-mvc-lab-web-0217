class PigLatinizer

  def piglatinize(text)
    piglatin = ""
    vowel_split = text.split /([aeiouAEIOU].*)/
    vowel_split.delete("")
    if vowel_split.count == 1
      piglatin = text + "way"
    else
      piglatin = (vowel_split.reverse.join('')) + "ay"
    end
    piglatin
  end

  def to_pig_latin(phrase)
    phrase.split(' ').map{|word| piglatinize(word)}.join(' ')
  end
end
