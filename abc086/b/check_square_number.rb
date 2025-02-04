#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力の取得
a, b = gets.split

# a と b を結合して整数に変換
number = (a + b).to_i

# 平方根を計算
sqrt = Math.sqrt(number)

# 平方根が整数なら平方数
if sqrt == sqrt.to_i
  puts 'Yes'
else
  puts 'No'
end
