puts "Please enter a string."
str = gets.chomp
puts "Please enter the value you wish to change the stribg by."
change = gets.to_i
puts str

new_str = str.chars
count = 0
result = Array.new(str.length)
new_str.each_entry do |c|
  x = c.ord
  if (x >= 65 && x < 91) || (x >= 97 && x < 123)
    x += change
    if (x > 90) && (x < 97)
      x = x - 91 + 65
    end
    if x > 122
      x = x - 123 + 97
    end
  end
  result[count] = x.chr
  count += 1
end

result = result.join

puts result

