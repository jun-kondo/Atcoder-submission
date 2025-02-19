#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

col = []
n.times do
  col << a.shift
  while col.size > 1 && col[-1] == col[-2]
    unt = col[-1].succ
    col.pop
    col.pop
    col << unt
  end
end
puts col.size
