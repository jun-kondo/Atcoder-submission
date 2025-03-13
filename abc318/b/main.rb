#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
points = Set.new
(0...n).each do
  a, b, c, d = gets.split.map(&:to_i)

  (a...b).each do |x|
    (c...d).each do |y|
      points << [x, y]
    end
  end
end
puts points.size
