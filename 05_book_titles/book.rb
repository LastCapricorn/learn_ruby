class Book
# write your code here
  def title=(name)
    @book = name
  end

  def title
    book = @book.split
    exceptions = ["The", "A", "An", "And", "Or", "In", "Of", "To"]

    book.each do |word|
      word.capitalize!

      exceptions.each do |except|
        if except == word
          word.downcase!
        end
      end

    end

    book[0].capitalize!
    book.join(" ")

  end

end
