#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
r = 0
# 尺取法
n.times do |l|
  while r < n
    break if (r > l + 1) && (a[r] - a[r - 1] != a[r - 1] - a[r - 2])

    r += 1
  end
  ans += r - l
end
puts ans
