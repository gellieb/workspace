def reverse(word)
  word = ARGV
  if word == ""
    return "hello"
  else
    return "goodbye"
  end
end

filename = ARGV.first
txt = open(filename)
puts "here is your file: #{filename}"
print txt.read

txt.read.each_line do |line|
  print reverse(line)
end
