
inp1 = 1,2,3,4,5,6,7,8,9,10
inp2 = 7
result = 0
low = 0
high = inp1.size

# ベンチマーク用
s = Time.now
100000.times do

while low <= high do
  mid = (low + high) / 2
  if inp2 < inp1[mid]
    high = mid + 1
  elsif inp2 > inp1[mid]
    low = mid - 1
  elsif inp2 == inp1[mid]
    result = mid
    break
  end
end

# ベンチマーク用
end
puts "#{Time.now - s}s"

puts result
