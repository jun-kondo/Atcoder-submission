#!/usr/bin/env ruby
# frozen_string_literal: true

x = gets.to_i

(2..20).each do |i|
  f = 1
  (1..i).each do |j|
    f *= j
  end

  puts i if f == x
end
