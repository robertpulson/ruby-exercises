questions = ['Who knows, Only smarties have the answer...',
            'Have you ever been in the situation where youve lost your keys and youve lost your phone?',
            'Are you dizzy blud?',
            'Are you having a bubble?',
            'Do you know what a nemesis is?',
            'Say my name...',
            'I can only show you the door, you have to walk through it...',
            'You are the all singing, all dancing, crap of the world...',
            'Its so funny, how we dont talk anymore...',
            'I only know one thing, and that is, that I know nothing',
            'If you gaze for long enough into the abyss, the abyss gazes back into you...',
            'I see, said the blind man, to his deaf wife...']

puts 'Hello'
response = gets.chomp.downcase
hellos = 0
byes = 0
name = '?'

while byes < 3
  
  if response == 'hello' && hellos == 0
    puts 'What is your name?'
    name = gets.chomp.capitalize
    puts 'Hello ' + name
    hellos = hellos + 1
  elsif response == 'hello' && hellos == 1
    puts 'Hello again ' + name
    hellos = hellos + 1
  elsif response == 'hello' && hellos > 1
    puts 'Why do you keep saying hello? Are you broken ' + name + '?'
  elsif response == 'bye' && byes == 0
    puts 'Are you going so soon?'
    byes = byes + 1
  elsif response == 'bye' && byes == 1
    puts 'Please ' + name + ', Dont go. We were just getting to know eachother...'
    byes = byes + 1
  elsif response == 'bye' && byes == 2
    puts 'I cant believe youre leaving me...'
    byes = byes + 1
  elsif response.include? 'name'
      puts 'I am Phils Interpretation and Recognition Interface. But you can call me PIRI.'
    elsif response.include? 'try'
      puts 'Dont just try ' + name + '. Just do it.'
    elsif response.include? 'door'
      puts 'The door to Narnia...'
    elsif response == 'how are you?'
      puts 'Im super. Thanks for asking.'
    elsif response.include? 'piri'
      puts 'Thats my name, dont wear it out.'
    elsif response.include? 'weather'
      puts 'You can check the weather at weather.yahoo.com'
    elsif response.include? 'nice'
      puts 'Nice is boring. But the problem is most people think boring is nice...'
    elsif response.include? 'no'
      puts 'Dont be so negative ' + name + '.'
    elsif response.include? 'sorry'
      puts 'Its ok ' + name + ' Ill let you off this time.'
    elsif response.include? 'repeat'
      puts 'Why would I do that ' + name + '? Do you think I am some sort of machine?'
    elsif response.include? 'thank'
      puts 'No Problemo. ;)'
    elsif response.include? 'cool'
      puts 'As a cucumber?'
    elsif response.include? 'yes'
      puts 'Good.'
    elsif response.include? 'think'
      puts 'I think, therefore, I am...'
    elsif response.include? 'time'
      puts 'Its time you got a watch...'
    elsif response == 'why'
      puts 'Thats a good question...'
    elsif response.include? 'nemesis'
      puts 'Nemesis. A righteous infliction of retribution, manifested by an appropriate agent.'
  else
    puts questions [rand(questions.length)]
  end
  
  response = gets.chomp.downcase
  
end

puts 'Ok. Goodbye ' + name + '.'