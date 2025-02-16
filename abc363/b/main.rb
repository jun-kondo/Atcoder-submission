#!/usr/bin/env ruby
# frozen_string_literal: true

n, t, p = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
ans = 0
cnt = l.count { |x| x >= t }
while cnt < p
  (0...n).each do |i|
    cnt -= 1 if l[i] >= t
    l[i] += 1
    cnt += 1 if l[i] >= t
  end
  ans += 1
end
puts ans
