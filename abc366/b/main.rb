#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = Array.new(n) { gets.chomp.chars }
m = s.max_by(&:size).size
ans = []
(0...m).each do |i|
  inner = []
  (0...n).reverse_each do |j|
    c = s[j][i] || '*'
    inner << c
  end
  inner.pop while inner[-1] == '*'
  word = inner.join
  ans << word
end
ans.each { |a| puts a }
