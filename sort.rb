names = ["ian", "elana", "karen"]

def sorting(array)
  array.sort!
end

def sort_with_others(array)
  sorting(array)
  new_array = array.reverse!
end

def first_of_array(array)
  sort_with_others(array).first
end

def last_of_array(array)
  sort_with_others(array).last
end

def first_and_last(array)
  puts first_of_array(array)
  puts last_of_array(array)
end

def includes(array)
  if array.include?("ian")
    puts "ian is here"
  else
    puts "nope"
  end
  if array.include?("jim")
    puts "jim is here"
  else 
    puts "nope"
  end
  
  puts array.size 
  puts array.length 
end

includes(names)