#!/usr/bin/env ruby
# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

teeth = [1] * n
t.each do |num|
  num -= 1
  teeth[num] = if teeth[num] == 1
                 0
               else
                 1
               end
end
res = teeth.count(1)
puts res
