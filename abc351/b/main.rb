#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
a = Array.new(n) { gets.chomp.chars }
b = Array.new(n) { gets.chomp.chars }

(0...n).each do |i|
  (0...n).each do |j|
    if a[i][j] != b[i][j]
      puts "#{i + 1} #{j + 1}"
      exit
    end
  end
end
