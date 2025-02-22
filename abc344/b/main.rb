#!/usr/bin/env ruby
# frozen_string_literal: true

res = []
n = gets.to_i
res << n
while n != 0
  n = gets.to_i
  res << n
end
puts res.reverse
