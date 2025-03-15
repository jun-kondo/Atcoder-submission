#!/usr/bin/env ruby
# frozen_string_literal: true

n, d = gets.split.map(&:to_i)
S = Array.new(n) { gets.chomp.chars }.transpose

ans = 0
res = 0
(0...d).each do |i|
  if S[i].all?('o')
    res += 1
    ans = [ans, res].max
  else
    res = 0
  end
end
puts ans
