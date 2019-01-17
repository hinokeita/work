inp = 1,3,2,4,6,5,8,7,9,10

#ベンチマーク用
# s = Time.now
# 10000.times do

tmp = 0
for i in 0..(inp.count - 1) do
  tmp = i
  for j in i..(inp.count - 1) do
    if inp[j] < inp[tmp]
      tmp = j
    end
  end
  buf = inp[i]
  inp[i] = inp[tmp]
  inp[tmp] = buf
end

# ベンチマーク用
# end
# puts "#{Time.now - s}s"

puts inp
