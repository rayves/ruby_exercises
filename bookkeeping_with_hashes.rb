=begin

The book_keeper method returns an array of books, each book represented by a hash. 

Add code to the book_keeper method that will do the following.

Populate the array with 3 books. Each book will be represented as a hash with keys title, author, and year (that the book was published).

Loop through this array, printing to screen the value of each member of the array. Format the output so that each book looks like this: Harry Potter by J.K. Rowling (1997)

=end

def book_keeper
    books_array = []
    # Your code here, start by adding some books to the books_array

    #* hashes can be added through pushes seperately or...
    # books_array.push(title: "The Da Vinci Code", author: "Dan Brown", year: "2003")
    # books_array.push(title: "Harry Potter and the Deathly Hallows", author: "J.K. Rowling", year: "2007")
    # books_array.push(title: "Fifty Shades of Grey", author: "E. L. James", year: "2011")

    #* hashes can be added through pushes grouped together.
    books_array.push(
        {title: "The Da Vinci Code", author: "Dan Brown", year: "2003"},
        {title: "Harry Potter and the Deathly Hallows", author: "J.K. Rowling", year: "2007"},
        {title: "Fifty Shades of Grey", author: "E. L. James", year: "2011"}
    )
    books_array.each do |book| # book representing each hash (value) in array
         puts "#{book[:title]} by #{book[:author]} (#{book[:year]})"
    end

    return books_array
end

# Outputting the return value of the book_keeper method
book_keeper