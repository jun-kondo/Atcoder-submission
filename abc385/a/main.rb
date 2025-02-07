#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)
result = 'No'
result = 'Yes' if a == b && b == c
[a, b, c].each do |i|
  result = 'Yes' if i == ([a, b, c].sum - i)
end
puts result
