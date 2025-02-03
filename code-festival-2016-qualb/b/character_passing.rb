#!/usr/bin/env ruby
# frozen_string_literal: true

# 入力を取得
n, a, b = gets.split.map(&:to_i)
s = gets.chomp.chars

# 各種カウントの初期化
total_passed = 0
foreign_passed = 0

# 出力結果
results = s.map do |char|
  if char == 'a' && total_passed < a + b
    total_passed += 1
    'Yes'
  elsif char == 'b' && total_passed < a + b && foreign_passed < b
    total_passed += 1
    foreign_passed += 1
    'Yes'
  else
    'No'
  end
end

# 結果を出力
puts results
