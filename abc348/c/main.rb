#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
list = {}
list.default = 10**9 + 1
(0...n).each do
  a, c = gets.split.map(&:to_i)
  list[c] = [list[c], a].min
end
puts list.values.max
