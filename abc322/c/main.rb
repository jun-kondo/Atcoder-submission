#!/usr/bin/env ruby
# frozen_string_literal: true

N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = []
m = 0
(1..N).each do |n|
  ans << a[m] - n
  m += 1 if n == a[m]
end
puts ans
