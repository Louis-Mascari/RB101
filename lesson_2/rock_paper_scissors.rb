VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_ABBREVIATIONS = %w(r p sc sp l)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def return_winner(player, computer)
  if win?(player, computer) then "player"
  elsif win?(computer, player) then "computer"
  end
end

abbreviated_choices = {
  r: 'rock',
  p: 'paper',
  sc: 'scissors',
  sp: 'spock',
  l: 'lizard'
}

player_score = 0
computer_score = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("Can abberviate (r - rock, p - paper, sc - scissors, sp - spock, l - lizard)")
    prompt("First to 3 wins is the GRAND CHAMPION!")
    choice = gets.chomp
    
    if VALID_CHOICES.include?(choice)
      break
    elsif VALID_ABBREVIATIONS.include?(choice)
      choice = abbreviated_choices[choice.to_sym]
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")
  
  display_result(choice, computer_choice)
  if return_winner(choice, computer_choice) == 'player'
    player_score += 1
  elsif return_winner(choice, computer_choice) == 'computer'
    computer_score += 1
  end
  prompt("Player: #{player_score} | Computer: #{computer_score}")
  if player_score == 3
    prompt(" ----------------------------------
    ###!YOU are the GRAND CHAMPION!###
    ----------------------------------")
    break
  elsif computer_score == 3
    prompt(" ------------------------------------------
    ###!THE COMPUTER is the GRAND CHAMPION!###
    ------------------------------------------")
    break
  end
  
  prompt("Do you want to play again? (y/yes to continue)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye.")
