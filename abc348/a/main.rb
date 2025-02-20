#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i

res = []
(1..n).each do |i|
  res << if i % 3 == 0
           'x'
         else
           'o'
         end
end
puts res.join
