#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i.pred
if n == 0
  puts 0
  exit
end
ans = n.to_s(5).to_i * 2
puts ans
