#capitalize the first letter of each word

#split the string into its individual words
#iterate through words
# =>capitalize first character of each word in the string
#iterate again through array
# =>add element of array to string
# =>add" " after each word unless last word

=begin
def titleize(sample_string)
  titleized_string = ""
  sample_array = sample_string.split(" ")
  sample_array.map do |word|
    titleized_string << word.capitalize!
    titleized_string << " " unless word == sample_array.last
  end
  titleized_string
end

words = "the flintstones rock"
titleized_words = titleize(words)
puts titleized_words
=end

words = "the flintstones rock"
p words.split.map {|word| word.capitalize}.join(' ')