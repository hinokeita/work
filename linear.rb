
inp1 = 1,2,3,4,5,6,7,8,9,10
inp2 = 7
result = 0

# ベンチマーク用
# s = Time.now
# 100000.times do

for i in 0..(inp1.count) do
  if inp2 == inp1[i]
    result = i
    break
  end
end

# ベンチマーク用
# end
# puts "#{Time.now - s}s"

puts result
