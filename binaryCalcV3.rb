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