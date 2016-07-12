def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card()
  card2 = deal_card()

  total = card1 + card2

  display_card_total(total)

  total
end

def hit?(total)
  prompt_user()
  input = get_user_input()

  case input

    when 's'
      total
    when 'h'
      total + deal_card()
    else
      invalid_command
  end

end

def invalid_command
  puts "Invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  total = initial_round()

  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end

  end_game(total)
end
