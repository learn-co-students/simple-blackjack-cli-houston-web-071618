def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random = rand(1..11)
  return random
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  #Sorry, you hit 27. Thanks for playing!
  #Sorry, you hit 30. Thanks for playing!
  # code #end_game here
end

def initial_round
  # code #initial_round here
  sum = deal_card+deal_card
  display_card_total(sum)
  return sum
end

another_card =0;
def hit?(total)
  # code hit? here
  prompt_user
    input = get_user_input
    if (input == "s")
      return total
    elsif(input== "h")
      total += deal_card
    else
      invalid_command
    end
    return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  # prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total >21 do
    total = hit?(total)
    display_card_total(total)
  end
 end_game(total)
end
# runner    
