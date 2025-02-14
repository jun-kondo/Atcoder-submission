#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
w = gets.split.map(&:to_i)
ws = {}
(0...n).each do |i|
  ai = a[i]
  wi = w[i]
  if ws[ai]
    ws[ai] << wi
  else
    ws[ai] = [wi]
  end
end

ans = 0
ws.each do |_ai, wi|
  next if wi.size < 2

  ans += wi.sum - wi.max
end
puts ans
