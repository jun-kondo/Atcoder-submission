#!/usr/bin/env ruby
# frozen_string_literal: true

n, m, p = gets.split.map(&:to_i)

count = 0
(1..n).each do |i|
  count += 1 if ((i - m) % p).zero?
end
puts count
