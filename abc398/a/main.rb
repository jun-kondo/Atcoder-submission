#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
if n.even?
  h = '-' * ((n - 2) / 2)
  ans = h + '==' + h
  puts ans
else
  h = '-' * ((n - 1) / 2)
  ans = h + '=' + h
  puts ans
end
