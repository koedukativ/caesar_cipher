def cipher(word, shift)
    alphabet = Array ('a'..'z')
    newWord = Array ()
    word = word.chars
    word.each { |i|  
      if alphabet.include? i
        newWord.push(alphabet[(alphabet.index(i)+shift)%alphabet.size])
      elsif alphabet.include? i.downcase
        newWord.push(alphabet[(alphabet.index(i.downcase)+shift)%alphabet.size].upcase)
      else
        newWord.push(i)
      end
  }
    puts newWord.join 
  end