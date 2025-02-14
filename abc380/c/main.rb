#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
res = []
from = nil
(0...n).each do |i|
  if s[i].to_i == 1 && from.nil?
    from = i
    res << { from:, to: i, dist: 0 }
  elsif s[i].to_i == 1
    res.last[:to] = i
    res.last[:dist] += 1
  else
    from = nil
  end
end
(res[k - 1][:from]..res[k - 1][:to]).each { |i| s[i] = '0' }
(res[k - 2][:to] + 1..res[k - 2][:to] + 1 + res[k - 1][:dist]).each { |i| s[i] = '1' }
puts s.join
