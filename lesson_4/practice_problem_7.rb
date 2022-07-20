statement = "The Flintstones Rock"
#create a hash that expresses the frequency of each letter in the string ex: { "F" => 1, etc.}

#split the string into individual letters
#create hash to store frequency of letters
#iterate through the individual letters
# =>if letter key already appears in hash, increase its value by 1
# =>if letter key does not appear, add key to hash setting value to 1
#remove space key, so only letters are returned
frequency_hash = {}
array_of_string = statement.split("")
array_of_string.each do |letter|
  if frequency_hash.key?(letter)
    frequency_hash[letter] += 1
  else
    frequency_hash[letter] = 1
  end
end
frequency_hash.delete(" ")
p frequency_hash