#!/usr/bin/env ruby
# frozen_string_literal: true

b, g = gets.split.map(&:to_i)

if b > g
  puts 'Bat'
else
  puts 'Glove'
end
