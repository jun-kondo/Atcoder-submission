#!/usr/bin/env ruby
# frozen_string_literal: true

h = gets.to_i
p = 0
i = 0
while p <= h
  p += 2**i
  i += 1
end
puts i
