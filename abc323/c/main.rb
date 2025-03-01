#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp.chars }

results = []
remains = []
(0...n).each do |i|
  result = i + 1
  remain = []
  (0...m).each do |j|
    if s[i][j] == 'o'
      result += p[j]
    else
      remain << p[j]
    end
  end
  results << result
  remains << remain.sort.reverse
end

best = results.max

ans = (0...n).map do |i|
  j = 0
  while j < remains[i].size && results[i] < best
    results[i] += remains[i][j]
    j += 1
  end
  j
end

puts ans
