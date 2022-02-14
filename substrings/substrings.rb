dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "i", "low", "own", "part", "partner", "sit"]
puts "Please enter a string, try to use some of the words listed in the default dictionary!"
puts dictionary
user_entry = gets.chomp
string_user_entry = user_entry.split("")
print string_user_entry


def substrings(user_input,stored_list)
  counter = Hash.new
    for word in stored_list do
      sum = 0
        word_array = word.split("")
        x = word_array.length()
        user_input.each_with_index do |element, index|
          new_word = user_input[index, x]
          if new_word == word_array
            sum = sum + 1
          end
        end
        if sum > 0
        counter["#{word}"] = sum
        end
    end
  counter
end

list_total = substrings(string_user_entry, dictionary)
puts list_total