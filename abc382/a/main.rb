#!/usr/bin/env ruby
# frozen_string_literal: true

n, d = gets.split.map(&:to_i)
s = gets.chomp.chars
result = n - [s.count { |x| x == '@' } - d, 0].max
puts result
