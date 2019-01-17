
inp = 1,3,2,4,6,5,8,7,9,10

# ベンチマーク用
# s = Time.now
# 10000.times do

for i in 1..(inp.count) do
  for j in 1..(inp.count - i) do
    if inp[j] < inp[j - 1]
      tmp = inp[j]
      inp[j] = inp[j - 1]
      inp[j - 1] = tmp
    end
  end
end


# ベンチマーク用
# end
# puts "#{Time.now - s}s"

puts inp
