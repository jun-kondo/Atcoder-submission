#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = Array.new(n) { gets.chomp.chars }

result = s.map.with_index(1) do |chars, i|
  [i, -chars.sum { |c| c == 'o' ? 1 : 0 }]
end
puts result.sort_by { |_k, v| v }.map(&:first).join(' ')
