#!/usr/bin/env ruby
# frozen_string_literal: true

N, a, b = gets.split
S = gets.chomp
S.each_char.with_index do |c, i|
  S[i] = b if c != a
end
puts S
