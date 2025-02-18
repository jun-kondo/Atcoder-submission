#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 0
until a.empty?
  m = 0
  while !a.empty? && m < k
    break unless m + a[0] <= k

    m += a.shift

  end
  ans += 1
end
puts ans
