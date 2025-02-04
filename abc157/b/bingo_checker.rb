#!/usr/bin/env ruby
# frozen_string_literal: true

# ビンゴカードを読み込む
bingo = Array.new(3) { gets.split.map(&:to_i) }

# 選ばれた数字を読み込む
n = gets.to_i
numbers = Array.new(n) { gets.to_i }

# 横のチェック
bingo.each do |row|
  if row.all? { |num| numbers.include?(num) }
    puts 'Yes'
    exit
  end
end

# 縦のチェック
bingo.transpose.each do |col|
  if col.all? { |num| numbers.include?(num) }
    puts 'Yes'
    exit
  end
end

# 斜めのチェック
if [bingo[0][0], bingo[1][1], bingo[2][2]].all? { |num| numbers.include?(num) } ||
   [bingo[0][2], bingo[1][1], bingo[2][0]].all? { |num| numbers.include?(num) }
  puts 'Yes'
  exit
end

# ビンゴではない場合
puts 'No'
