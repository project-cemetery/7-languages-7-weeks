arr = (1..16).to_a

# Part 1
puts 'Part 1'

chunked = [[]]

arr.each do |i|
  if chunked.last.length < 4
    chunked.last.push(i)
  else
    chunked.push([i])
  end
end

chunked.each { |i| puts "#{i}" }

# Part 2
puts 'Part 2'

arr.each_slice(4) { |i| puts "#{i}" }
