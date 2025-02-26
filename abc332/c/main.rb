#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
s = gets.chomp.chars

stock = m
ans = 0
new = 0
(0...n).each do |i|
  if s[i] == '2'
    new += 1
  elsif s[i] == '1' && stock > 0
    stock -= 1
  elsif s[i] == '1'
    new += 1
  else
    stock = m
    new = 0
  end
  ans = [ans, new].max
end
puts ans

# 洗濯するまでに着回すために購入するTシャツの枚数を求める問題
# nの数が少なかったのでシミュレーション
