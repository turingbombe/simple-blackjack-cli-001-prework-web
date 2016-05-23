def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
    gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here'
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
   hand = card_total
   
   prompt_user
   selection = get_user_input

   if selection == "h"
      new_card = deal_card
      new_sum = new_card + hand
      display_card_total(new_sum)
    elsif selection == "s"
      hand
    else
      invalid_command
    end
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
    welcome
    cards = initial_round
    until cards > 21
      cards = hit?(cards)
    end
    end_game(cards)
end