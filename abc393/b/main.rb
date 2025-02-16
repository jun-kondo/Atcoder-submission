#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
n = s.size
ans = 0

(0...n - 2).each do |i|
  (i + 1...n - 1).each do |j|
    (j + 1...n).each do |k|
      ans += 1 if (j - i) == (k - j) && s[i] == 'A' && s[j] == 'B' && s[k] == 'C'
    end
  end
end

puts ans
