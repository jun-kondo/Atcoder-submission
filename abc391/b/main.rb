#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp.chars }
t = Array.new(m) { gets.chomp.chars }
(0..n - m).each do |a|
  (0..n - m).each do |b|
    ok = true
    (0...m).each do |i|
      (0...m).each do |j|
        ok = false if s[a + i][b + j] != t[i][j]
      end
    end
    puts [a + 1, b + 1].join(' ') if ok
  end
end
