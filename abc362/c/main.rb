#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
# [l, r]の配列をn個ではなくn個の配列LとRを作る
left = []
right = []
(0...n).each do
  li, ri = gets.split.map(&:to_i)
  left << li
  right << ri
end

sum_left = left.sum
sum_right = right.sum
# Lの合計 < 0 < Rの合計になっていれば条件を満たしている
if sum_left > 0 || sum_right < 0
  puts 'No'
  exit
end
puts 'Yes'

ans = left
remain = -sum_left
(0...n).each do |i|
  can_add = right[i] - left[i]
  if can_add < remain
    ans[i] = right[i] # ansはlの値なのでそれをrに置き換える. l[i] + can_addでr[i]
    remain -= can_add
  else
    ans[i] += remain
    break
  end
end
puts ans.join(' ')
