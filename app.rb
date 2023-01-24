puts "Enter the path you want to check: "
path = gets.chomp
files = Array.new
i = 0
max = 0

Dir.glob("#{path}/*") do |file_path|
    file = File.basename(file_path, ".*")
    files.append(file)
end 

b = Hash.new(0)

files.each do |value|
    b[value]+= 1
end

puts "\nResult: "

max_key = b.key(b.values.max)
max_value = b.values.max

unless max_value >= 2
    puts "Sorry, there are no duplicate filenames"
else
    puts "#{max_key} #{max_value}"
end