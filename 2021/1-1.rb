c = 0
last = 1000000
File.foreach("input 1-1.txt") do |line|
    c+=1 if line.to_i > last
    last = line.to_i
end
puts c
