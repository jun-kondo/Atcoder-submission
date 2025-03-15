#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

ABC = 'ABC'.chars

(0...n).each do |i|
  ABC.delete(s[i])
  if ABC.empty?
    puts i + 1
    break
  end
end
