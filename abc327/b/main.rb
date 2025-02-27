#!/usr/bin/env ruby
# frozen_string_literal: true

b = gets.to_i
# b = 10**18
# 制約の10**18を超えるのは15**15なので上限を15に設定
(1..15).each do |i|
  if i**i == b
    puts i
    exit
  elsif i**i > b
    puts '-1'
    exit
  end
end
