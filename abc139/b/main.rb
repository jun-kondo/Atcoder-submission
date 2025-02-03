#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

outlet = 1
taps = 0
while outlet < b
  outlet += a - 1
  taps += 1
end
puts taps
