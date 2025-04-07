#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i

m = 400 / n
if n * m == 400
  puts m
else
  puts(-1)
end
