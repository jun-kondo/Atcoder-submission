#!/usr/bin/env ruby
# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
S = Array.new(n) { gets.chomp.chars }
def check?(t)
  3.times do |i|
    3.times do |j|
      return false if t[i][j] != '#'
      return false if t[8 - i][8 - j] != '#'
    end
  end
  4.times do |i|
    4.times do |j|
      next if i < 3 && j < 3
      return false if t[i][j] != '.'
      return false if t[8 - i][8 - j] != '.'
    end
  end
  true
end

ans = []
(0...n - 8).each do |i|
  (0...m - 8).each do |j|
    t = Array.new(9) { [] }
    9.times do |k|
      9.times do |l|
        t[k] << S[i + k][j + l]
      end
    end
    ans << [i + 1, j + 1] if check?(t)
  end
end
puts ans.map { |a| a.join(' ') }.join("\n")
