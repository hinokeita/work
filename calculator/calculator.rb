require './arithmetic'

include(Arithmetic)
inp1 = num_scan
temp_num = []
temp_ope = ""
result = 0
puts '「＋」「－」「*」「/」のいずれかを入力してください'
ope1 = gets.chomp
inp2 = num_scan
case ope1
when "+"
  temp_num.push(inp1)
  temp_num.push(inp2)
  temp_ope = "+"
when "-"
  temp_num.push(inp1)
  temp_num.push(inp2)
  temp_ope = "-"
when "×","*"
  result = multi(inp1,inp2)
when "÷","/"
  result = div(inp1,inp2)
end

loop do
  puts '「＋」「－」「*」「/」「=」のいずれかを入力してください'
  ope2 = gets.chomp
  case ope2
  when "+"
    result = temp_func(result,temp_num,temp_ope)
    temp_num = temp_set(temp_num,result)
    temp_ope = "+"
  when "-"
    result = temp_func(result,temp_num,temp_ope)
    temp_num = temp_set(temp_num,result)
    temp_ope = "-"
  when "×","*"
    inp3 = num_scan
    result += multi(inp3,temp_num[1])
    temp_num[1] = result
    result = temp_func(result,temp_num,temp_ope)
    temp_num.clear
  when "÷","/"
    inp3 = num_scan
    result += div(inp3,temp_num[1])
    temp_num[1] = result
    result = temp_func(result,temp_num,temp_ope)
    temp_num.clear
  when "="
    result = temp_func(result,temp_num,temp_ope) unless temp_num.empty?
    break
  end
end

puts "計算結果は#{result}です"
