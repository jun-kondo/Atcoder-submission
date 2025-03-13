#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = []
(0...n).each do |i|
  ans << A[i] / k if A[i] % k == 0
end
puts ans.join(' ')
