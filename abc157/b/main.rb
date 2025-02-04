#!/usr/bin/env ruby
# frozen_string_literal: true

bingo = Array.new(3) { gets.split.map(&:to_i) }
n = gets.to_s.to_i
numbers = Array.new(n) { gets.to_s.to_i }
flag = false
# 行チェック
bingo.each do |b|
  flag = true if b.intersection(numbers).sort == b.sort
end
# 列チェック
bingo.transpose.each do |b|
  flag = true if b.intersection(numbers).sort == b.sort
end
# 斜めチェック
if [bingo[0][0], bingo[1][1], bingo[2][2]].intersection(numbers).sort == [bingo[0][0], bingo[1][1], bingo[2][2]].sort
  flag = true
end
if [bingo[0][2], bingo[1][1], bingo[2][0]].intersection(numbers).sort == [bingo[0][2], bingo[1][1], bingo[2][0]].sort
  flag = true
end

puts flag ? 'Yes' : 'No'
