def bottles numberOfBottles
  numberOfBottlesText = ''
  while numberOfBottles > 0
    
    isTeen = false
    left = numberOfBottles            #left over number
    write = left/100                  #writes this
    left = left - write*100
    
    if write == 9
      numberOfBottlesText = 'Nine'
    elsif write == 8
      numberOfBottlesText = 'Eight'
    elsif write == 7
      numberOfBottlesText = 'Seven'
    elsif write == 6
      numberOfBottlesText = 'Six'
    elsif write == 5
      numberOfBottlesText = 'Five'
    elsif write == 4
      numberOfBottlesText = 'Four'
    elsif write == 3
      numberOfBottlesText = 'Three'
    elsif write == 2
      numberOfBottlesText = 'Two'
    elsif write == 1
      numberOfBottlesText = 'One'
    end
    
    if write != 0
      numberOfBottlesText << ' Hundred'
    end
    
    write = left/10
    left = left - write*10
    
    if write != 0 && numberOfBottlesText != ''
      numberOfBottlesText << ' and '
    end
    
    if write == 0 && left != 0 && numberOfBottlesText != ''
      numberOfBottlesText << ' and'
    end
    
    if write == 9
      numberOfBottlesText << 'Ninety'
    elsif write == 8
      numberOfBottlesText << 'Eighty'
    elsif write == 7
      numberOfBottlesText << 'Seventy'
    elsif write == 6
      numberOfBottlesText << 'Sixty'
    elsif write == 5
      numberOfBottlesText << 'Fifty'
    elsif write == 4
      numberOfBottlesText << 'Forty'
    elsif write == 3
      numberOfBottlesText << 'Thirty'
    elsif write == 2
      numberOfBottlesText << 'Twenty'
    elsif write == 1 && left == 9
        numberOfBottlesText << 'Nineteen'
        isTeen = true
      elsif write == 1 && left == 8
        numberOfBottlesText << 'Eighteen'
        isTeen = true
      elsif write == 1 && left == 7
        numberOfBottlesText << 'Seventeen'
        isTeen = true
      elsif write == 1 && left == 6
        numberOfBottlesText << 'Sixteen'
        isTeen = true
      elsif write == 1 && left == 5
        numberOfBottlesText << 'Fifteen'
        isTeen = true
      elsif write == 1 && left == 4
        numberOfBottlesText << 'Fourteen'
        isTeen = true
      elsif write == 1 && left == 3
        numberOfBottlesText << 'Thirteen'
        isTeen = true
      elsif write == 1 && left == 2
        numberOfBottlesText << 'Twelve'
        isTeen = true
      elsif write == 1 && left == 1
        numberOfBottlesText << 'Eleven'
        isTeen = true
      elsif write == 1 && left == 0
        numberOfBottlesText << 'Ten'
        isTeen = true
      end
    
    write = left
    left = 0
    
    if numberOfBottlesText != ''
      numberOfBottlesText << ' '
    end
      
      if write == 9 && isTeen == false
        numberOfBottlesText << 'Nine '
      elsif write == 8 && isTeen == false
        numberOfBottlesText << 'Eight '
      elsif write == 7 && isTeen == false
        numberOfBottlesText << 'Seven '
      elsif write == 6 && isTeen == false
        numberOfBottlesText << 'Six '
      elsif write == 5 && isTeen == false
        numberOfBottlesText << 'Five '
      elsif write == 4 && isTeen == false
        numberOfBottlesText << 'Four '
      elsif write == 3 && isTeen == false
        numberOfBottlesText << 'Three '
      elsif write == 2 && isTeen == false
        numberOfBottlesText << 'Two '
      elsif write == 1 && isTeen == false
        numberOfBottlesText << 'One '
      end
      
    puts numberOfBottlesText + 'bottles of beer on the wall.'
  	puts numberOfBottlesText + 'bottles of beer on the wall,'
    puts numberOfBottlesText + 'bottles of beer.'
    puts 'You pick one up pass it around...'
    numberOfBottlesText = ''
    isTeen = false
  	numberOfBottles = numberOfBottles - 1
  end
  
  if numberOfBottles == 1
    puts numberOfBottlesText + 'One bottle of beer on the wall.'
  	puts numberOfBottlesText + 'One bottle of beer on the wall,'
    puts numberOfBottlesText + 'One bottle of beer.'
    puts 'You pick one up pass it around...'
  end
  
  if numberOfBottles == 0
    puts 'No more bottles of Beer on the wall...'
  end
end

puts 'Enter number of bottles of Beer on the wall'
bottles = gets.chomp.to_i
bottles(bottles)