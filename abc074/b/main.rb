#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
k = gets.to_i
balls = gets.split.map(&:to_i)

result = (0..n - 1).sum { |i| [balls[i], k - balls[i]].min * 2 }

puts result
