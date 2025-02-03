#!/usr/bin/env ruby
# frozen_string_literal: true

N, D = gets.split.map(&:to_i)
sneaks = Array.new(N) { gets.split.map(&:to_i) }
ans = []
(1..D).each do |k|
  ans << sneaks.map { |s| s[0] * (s[1] + k) }.max
end
puts ans
