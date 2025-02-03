#!/usr/bin/env ruby
# frozen_string_literal: true

def solve
  n = gets.to_i
  x = gets.split.map(&:to_i)

  ans = Float::INFINITY
  (1..100).each do |p|
    tot = x.sum { |xi| (xi - p) ** 2 }
    ans = [ans, tot].min
  end

  puts ans
end

solve
