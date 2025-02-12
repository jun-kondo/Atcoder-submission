#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
r = 1
n.times do |l|
  r += 1 while r < n && a[r] / a[l] < 2
  ans += n - r
end
puts ans
