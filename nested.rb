# array = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# array[1][100] = 3

# puts array[1][45]

vending_machine = [[[{:name=>"Vanilla Cookies", :price=>3},
   {:name=>"Pistachio Cookies", :price=>3},
   {:name=>"Chocolate Cookies", :price=>3},
   {:name=>"Chocolate Chip Cookies", :price=>3}],
  [{:name=>"Tooth-Melters", :price=>12},
   {:name=>"Tooth-Destroyers", :price=>12},
   {:name=>"Enamel Eaters", :price=>12},
   {:name=>"Dentist's Nightmare", :price=>20}],
  [{:name=>"Gummy Sour Apple", :price=>3},
   {:name=>"Gummy Apple", :price=>5},
   {:name=>"Gummy Moldy Apple", :price=>1}]],
 [[{:name=>"Grape Drink", :price=>1},
   {:name=>"Orange Drink", :price=>1},
   {:name=>"Pineapple Drink", :price=>1}],
  [{:name=>"Mints", :price=>13},
   {:name=>"Curiously Toxic Mints", :price=>1000},
   {:name=>"US Mints", :price=>99}]]]
   
   def total_price(array)
     
     count = 0
     total = 0
      while count < array.length do
        inner_count = 0
        
        while inner_count < array[count].length do
          innermost = 0
          
          while innermost < array[count][inner_count].length do
            item_and_price = "#{array[count][inner_count][innermost][:name]} = $#{array[count][inner_count][innermost][:price]}"
            puts item_and_price
            total += array[count][inner_count][innermost][:price]
            innermost += 1
          end
          inner_count += 1
        end
        count += 1
      end
      
      puts "Total = $#{total}"
     
   end

total_price(vending_machine)   
   
   
   
   
   