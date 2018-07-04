def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card(value = 1..11)
  # code #deal_card here
  rand (value)
end

def display_card_total(value)
  # code #display_card_total here
  puts "Your cards add up to #{value}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(sum)
  # code #end_game here
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum

end

def hit?(current_total)
  prompt_user
input = get_user_input
if input == "h"
  return current_total += deal_card
elsif input == "s"
return current_total
else
  invalid_command
end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  hit?

end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  value = initial_round
  until value > 21
    value  = hit?(value)
    display_card_total(value)
  end 
end_game(value)
  # code runner here
end
