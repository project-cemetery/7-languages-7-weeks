number = rand(10)

guess = gets.to_i

if (number === guess)
  puts 'Right!'
else
  puts "Mistake =(, #{number}"
end
