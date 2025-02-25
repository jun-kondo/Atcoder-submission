#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
x = 0
n.to_s(2).reverse.each_char do |d|
  break unless d == '0'

  x += 1
end
puts x
