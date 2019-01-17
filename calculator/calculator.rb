require './arithmetic'

include(Arithmetic)
inp1 = num_scan
puts '「＋」「－」「*」「/」のいずれかを入力してください'
ope1 = gets.chomp
inp2 = num_scan
case ope1
when "+"
  result = add(inp1,inp2)
when "-"
  result = sub(inp1,inp2)
when "×","*"
  result = multi(inp1,inp2)
when "÷","/"
  result = div(inp1,inp2)
end

begin
  puts '「＋」「－」「*」「/」「=」のいずれかを入力してください'
  ope2 = gets.chomp
  case ope2
  when "+"
    inp3 = num_scan
    result = add(result,inp3)
  when "-"
    inp3 = num_scan
    result = sub(result,inp3)
  when "×","*"
    inp3 = num_scan
    result = multi(result,inp3)
  when "÷","/"
    inp3 = num_scan
    result = div(result,inp3)
  end
end while ope2 != "="

puts "計算結果は#{result}です"
