#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i # 5
k = gets.split.map(&:to_i) # 2 3 5 10 12

ans = 10**9
# ビットを左シフト。n=5なら32になる(1...32)なので32-1
(1...(1 << n)).each do |s|
  a = 0
  b = 0
  (0...n).each do |i|
    if (s >> i) & 1 == 1
      b += k[i]
    else
      a += k[i]
    end
  end
  now = [a, b].max
  ans = [ans, now].min
end
puts ans
