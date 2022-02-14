dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "i", "low", "own", "part", "partner", "sit"]
puts "Please enter a string, try to use some of the words listed in the default dictionary!"
puts dictionary
user_entry = gets.chomp
string_user_entry = user_entry.split("")
print string_user_entry



def substrings(user_input,stored_list)
  sum = 0
  
    for word in stored_list do
      
        word_array = word.split("")
        x = word_array.length()
        user_input.each_with_index do |element, index|
          new_word = user_input[index, x]
          if new_word == word_array
            puts "got one!"
            sum = sum + 1
          end
          p new_word
          p word
        end
    end
  puts sum
end

substrings(string_user_entry, dictionary)