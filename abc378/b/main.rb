#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
q, r = Array.new(n) { gets.split.map(&:to_i) }.transpose
Q = gets.to_i
Q.times do
  t, d = gets.split.map(&:to_i)
  t -= 1
  b, c = d.divmod(q[t])
  # 商の切り上げ
  a = c <= r[t] ? b : b + 1
  ans = a * q[t] + r[t]
  puts ans
end
