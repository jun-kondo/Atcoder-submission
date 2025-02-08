#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
hash = {}
res = []
n.times do |i|
  hash[q[i]] = p[i]
end
hash.sort.each do |_k, v|
  res << q[v - 1]
end
puts res.join(' ')
