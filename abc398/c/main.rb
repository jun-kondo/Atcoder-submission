#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

set = Hash.new { |hash, key| hash[key] = [] }
(0...n).each do |i|
  num = a[i]
  set[num] << i + 1
end
ans = nil
set.sort.each do |_num, arr|
  ans = arr[0] if arr.size == 1
end
puts ans || -1
