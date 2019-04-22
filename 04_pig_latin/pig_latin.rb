#write your code here
def translate(pig_latin)

  pig_latin = pig_latin.split
  translation = []

  def check_if_capitalized(word)
    word.start_with?(/[A-Z]/) ? true : false
  end

  pig_latin.each do |word|

    is_capitalized = check_if_capitalized(word)

    word = word.split("").rotate(word.index(/[qaeiou]/i)).join("")

    if (word.start_with?("qu"))
      word = word.split("").rotate(2).join("")
    end

    word += "ay"

    if (is_capitalized)
      word.capitalize!
    end

    if (word.index(/[^a-zA-Z]/))
      word = word.slice(0, word.index(/[^a-zA-Z]/)) + word.slice(word.index(/[^a-zA-Z]/) + 1, word.length - 1) + word[word.index(/[^a-zA-Z]/)]
    end

    translation.push(word)

  end

  translation.join(" ")

end
