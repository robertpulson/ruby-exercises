unsortedWords = []
sortedWords = []
  
puts 'Enter one word at a time, pressing \'Enter\' after each one.'
puts 'Then press \'Enter\' on a blank line to display them in alphabetical order.'
word = gets.chomp

while word != ''
    unsortedWords.push word
    word = gets.chomp
end

def sortWords array, sortedArray
  while array.count > 0
    i = 0
    word = array[i]
      while i < array.count - 1
        if word > array[i + 1]
          word = array[i + 1]
        end
        i += 1
      end
  
  sortedArray.push word
  array.delete(word)
  end
  sortedArray
  
end

  puts sortWords(unsortedWords, sortedWords)