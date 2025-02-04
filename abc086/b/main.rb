#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_s)
number = (a + b).to_i

# 入力値が100までなので100100がありうるので最大値を1000に設定
(1..1000).each do |i|
  if i**2 == number
    puts 'Yes'
    exit
  end
end

puts 'No'
