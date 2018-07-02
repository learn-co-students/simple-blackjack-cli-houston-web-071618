def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1+rand(11)
end

def display_card_total(cardTotal)
  # code #display_card_total here
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  userInput = gets.chomp
  return userInput
end

def end_game(cardTotal)
  # code #end_game here
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0 
  sum += (deal_card + deal_card)
  puts "Your cards add up to #{sum}"
  return sum
end

def hit?(cardTotal)
  # code hit? here
  prompt_user
  userInput = get_user_input
  case userInput
    when "h","H"
      cardTotal+=deal_card
    when "s","S"
      #Nothing Happens
    else
      invalid_command
    end
    
  return cardTotal
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################



def runner
  # code runner here
  
  theSum = 0 
  
  welcome
  theSum = initial_round
  until(theSum > 21)
    theSum = hit?(theSum)
    display_card_total(theSum)
  end
end_game(theSum)
end
    
