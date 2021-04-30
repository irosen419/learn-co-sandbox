# games_array = ["Halo", "Call of Duty", "Apex Legends"]
# prices_array = [59.99, 34.95, 0.00]

games_array = []
prices_array = []

def quantity
  puts "Quantity:"
  gets.chomp.to_i
end

def array_push(value1, value2)
  counter = 0
  
  while counter < quantity do
    puts "Game #{counter + 1}"
    game = gets.chomp
    value1.push(game)
    
    puts "Price"
    price = gets.chomp.to_i
    value2.push(price)
    
    counter += 1
  end
end

def give_receipt(value1, value2)
  games_receipt = {
    :games => value1,
    :prices => value2
  }
end

def buying_games(value1, value2)
  array_push(value1, value2)
  give_receipt(value1, value2)
  
  counter = 0
  total = 0
  
  while counter < value1.length do
    puts give_receipt(value1, value2)[:games][counter]
    puts "$#{give_receipt(value1, value2)[:prices][counter]}"
    counter += 1
  end
  
  counter = 0
  
  while counter < value2.length do
    total += value2[counter]
    counter += 1
  end
  puts "$#{total}"
end

buying_games(games_array, prices_array)
