#write your code here
def echo(echo_string)
  echo_string
end

def shout(shout_string)
  shout_string.upcase
end

def repeat(repeat_string, times =2 )
  repeat_string = repeat_string.split * times
  repeat_string.join(" ")
end

def start_of_word(start_string, letters = 1)
  start_string.slice(0, letters)
end

def first_word(first_string)
  first_string.split[0]
end

def titleize(title_string)
  title_string = title_string.split
  exceptions = ["The", "A", "An", "And", "Or", "In", "Of", "To", "Over"]

  title_string.each do |word|
    word.capitalize!

    exceptions.each do |except|
      if except == word
        word.downcase!
      end
    end

  end

  title_string[0].capitalize!
  title_string.join(" ")

end
