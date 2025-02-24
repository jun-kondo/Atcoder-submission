#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

(0...n - 1).each do |i|
  s, t = gets.split.map(&:to_i)
  a[i + 1] += (a[i] / s) * t
end
puts a[-1]
