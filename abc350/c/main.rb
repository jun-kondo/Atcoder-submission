#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
k = 0
res = []
(0...n).each do |i|
  while a[i] != i + 1
    res << [i + 1, a[i]]
    k += 1
    j = a[i] - 1 # スワップ先、a[i] = 3ならa[3-1]とスワップする
    a[i], a[j] = a[j], a[i]
  end
end
puts k
res.each { |r| puts r.join(' ') }
