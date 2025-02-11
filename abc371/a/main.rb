#!/usr/bin/env ruby
# frozen_string_literal: true

ab, ac, bc = gets.split
if ab != ac
  puts 'A'
elsif ab == bc
  puts 'B'
else
  puts 'C'
end
