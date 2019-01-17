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
end
