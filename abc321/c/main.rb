#!/usr/bin/env ruby
# frozen_string_literal: true

k = gets.to_i
res = []
(1...1 << 10).each do |s|
  nums = []
  10.times do |i|
    next unless (s >> i) & 1 == 1

    nums << i.to_s
  end
  num = nums.sort.reverse.join.to_i
  res << num unless num == 0
end
ans = res.sort[k - 1]
puts ans
