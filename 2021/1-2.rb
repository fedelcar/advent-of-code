c = 0
last = 1000000

file = File.open("input 1-1.txt")
file_data = file.readlines.map(&:chomp)
file_data.each_with_index do |e, i|     
    measurement = e.to_i + file_data[i+1].to_i + file_data[i+2].to_i
    c+=1 if measurement > last
    last = measurement
    break if i == file_data.count - 3
end

puts c
