filename = gets.strip
search = gets.strip

File.open("1-Ruby/day-2/#{filename}") do |file|
  line = 0
  file.each_line do |content|
    line += 1
    puts "[#{line}] #{content}" if content.include? search
  end
end
