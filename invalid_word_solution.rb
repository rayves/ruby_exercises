def print_num_letters(words)
    words.each do |word|
      begin
          puts "The word #{word} has #{word.length} letters in it."
      rescue
          puts "#{word || 'nil'} is not a valid value"
      end
    end
  end
  
  # nil and numbers are not valid
  print_num_letters(['dog',nil,'cat',4,'bird'])