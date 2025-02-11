#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
h = (1..n).each_with_object({}) do |i, h|
  h[i] = { F: 0, M: 0 }
end
m.times do
  a, b = gets.split
  a = a.to_i
  if h[a][:M] == 0 && b == 'M'
    puts 'Yes'
  else
    puts 'No'
  end
  b == 'M' ? h[a][:M] += 1 : h[a][:F] += 1
end
