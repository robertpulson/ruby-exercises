def binaryToDecimal
  def binaryToDecimal binary
  
  binaryArray = []
  powers = [1]
  decimalOutput = 0

  while binary != ''
    binaryArray.unshift(binary.reverse[0,1].reverse)
    binary.chop!
  end

  i = binaryArray.count

  while i > 1
    powers.unshift(powers[0] * 2)
    i = i - 1
  end

  i = 0

  while i < binaryArray.count
    if binaryArray[i] == '1'
      decimalOutput = decimalOutput + powers[i]
    end
    i = i + 1
  end

  i = 0
  lineWidth = 20

  while binaryArray[i] == '1' || binaryArray[i] == '0'
    puts (powers[i].to_s.ljust(lineWidth/2)) + '--'.center(lineWidth) + (binaryArray[i].to_s.rjust(lineWidth/2))
    i = i + 1
  end

  puts 'So ' + binaryArray.join + ' converts into ' + decimalOutput.to_s + ' in Decimal Numbers.'

  end

  puts 'Enter Binary number and Hit Enter to show its Decimal Equivalent'
  input = gets.chomp

  while input[/\A(2|3|4|5|6|7|8|9)\z/]
    puts 'Invalid Binary number! Enter a number containing only 1s and 0s'
    input = gets.chomp
  end

  binaryToDecimal(input)
end

def decimalToBinary
  def binaryCalcV3 input
  
    binaryNumber = []
    powers = [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]
    decimalNumber = input
  
    i = 0
    while i < powers.count
    
      power = powers[i]
      if decimalNumber >= power
        binaryNumber.push '1'
        decimalNumber = decimalNumber - power
      else
        binaryNumber.push '0'
      end
    
      i = i + 1
    end
  
    i = 0
    lineWidth = 8
  
    while i < powers.count
      puts (powers[i].to_s.ljust(lineWidth/2)) + '--'.center(lineWidth) + (binaryNumber[i].rjust(lineWidth/2))
      i = i + 1
    end
  
    puts
  
    while binaryNumber[0] == '0'
      binaryNumber.shift
    end
    puts 'So ' + input.to_s + ' converts to ' + binaryNumber.join + ' in Binary Code.'
  end

  puts 'Enter Number and Hit Enter to show its Binary Representation.'
  input = gets.chomp.to_i
  while input > 2048 || input < 0
    puts 'Invalid Number! Enter a positive number below 2049.'
    input = gets.chomp.to_i
  end

   if input == 0
     puts '0 is 0 in Binary Code; you mug!'
   else
   binaryCalcV3(input)
   end
end

def converterSelect input
  
  if input == 'b'
    puts binaryToDecimal
  elsif input == 'd'
    decimalToBinary
  end
end

puts 'Enter \'b\' to convert from Binary to Decimal'
puts 'Enter \'d\' to convert from Decimal to Binary'
input = gets.chomp

while input != 'b' && input != 'd'
  puts 'Invalid Input! Enter \'b\' or \'d\''
  input = gets.chomp
end

converterSelect(input)