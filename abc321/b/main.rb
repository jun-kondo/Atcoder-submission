#!/usr/bin/env ruby
# frozen_string_literal: true

N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

ans = nil
101.times do |i|
  arr = A.dup
  # arr << i
  # arr.sort!
  # if arr[1..-2].sum >= X
  if arr.push(i).sort[1..-2].sum >= X
    ans = i
    break
  end
end
puts ans || '-1'
