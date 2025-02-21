#!/usr/bin/env ruby
# frozen_string_literal: true

n, a = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
ans = 0
(0...n).each do |i|
  if ans < t[i]
    wait = t[i] - ans
    ans += wait
  end
  ans += a
  puts ans
end
