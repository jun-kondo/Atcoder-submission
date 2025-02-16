#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
exist = Set.new
ans = 0

m.times do
  a, b = gets.split.map(&:to_i)
  if a == b
    ans += 1
    next
  end
  ans += 1 unless exist.add?([a, b].sort)
end
puts ans
