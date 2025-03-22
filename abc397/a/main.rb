#!/usr/bin/env ruby
# frozen_string_literal: true

high = 38.0
low = 37.5

n = gets.to_f

if n >= high
  puts 1
elsif n < low
  puts 3
else
  puts 2
end
