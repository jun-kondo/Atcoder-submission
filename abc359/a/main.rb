#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
ans = 0
n.times do
  s = gets.chomp
  ans += 1 if s == 'Takahashi'
end
puts ans
