#!/usr/bin/env ruby
# frozen_string_literal: true

n, r = gets.split.map(&:to_i)
da = Array.new(n) { gets.split.map(&:to_i) }
rate = r
n.times do |i|
  div = da[i][0]
  plus = da[i][1]
  if div == 1 && rate >= 1600 && rate <= 2799
    rate += plus
  elsif  div == 2 && rate >= 1200 && rate <= 2399
    rate += plus
  end
end
puts rate
