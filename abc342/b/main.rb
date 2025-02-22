#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.to_i

(0...q).each do
  a, b = gets.split.map(&:to_i)
  ai = p.index(a)
  bi = p.index(b)
  puts ai < bi ? a : b
end
