def multiply(array, multiplier)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == array.size

    doubled_numbers << array[counter] * multiplier
    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]