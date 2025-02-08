#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.split.map(&:to_i)
ans = 0
n.tally.each do |_k, v|
  if v == 4
    ans += 2
  elsif [3, 2].include?(v)
    ans += 1
  end
end
puts ans
