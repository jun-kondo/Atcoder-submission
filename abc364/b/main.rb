#!/usr/bin/env ruby
# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
i, j = gets.split.map(&:to_i)
c = Array.new(h) { gets.chomp.chars }
X = gets.chomp.chars
i -= 1
j -= 1
X.each do |x|
  case x
  when 'L'
    j -= 1 if j - 1 >= 0 && c[i][j - 1] == '.'
  when 'R'
    j += 1 if j + 1 < w && c[i][j + 1] == '.'
  when 'U'
    i -= 1 if i - 1 >= 0 && c[i - 1][j] == '.'
  when 'D'
    i += 1 if i + 1 < h && c[i + 1][j] == '.'
  end
end
i += 1
j += 1
puts "#{i} #{j}"
