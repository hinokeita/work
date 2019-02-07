module Arithmetic
  def add(x,y)
    x + y
  end

  def sub(x,y)
    x - y
  end

  def multi(x,y)
    x * y
  end

  def div(x,y)
    x / y
  end

  def num_scan
    puts '数値を入力してください'
    x = gets.to_i
  end

  def temp_func(result,temp_num,temp_ope)
    if (!(temp_num.empty?) && temp_ope == "+")
      result = add(temp_num[0],temp_num[1])
    elsif (!(temp_num.empty?) && temp_ope == "-")
      result = sub(temp_num[0],temp_num[1])
    end
  end

  def temp_set(temp_num,result)
    temp_num.clear
    temp_num.push(result)
    temp_num.push(num_scan)
    return temp_num
  end
end
