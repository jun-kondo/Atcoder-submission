#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
x = 1
k = x**3
ans = []
while k <= n
  ans << k if k <= n && k.to_s == k.to_s.reverse
  x += 1
  k = x**3
end
puts ans.max
