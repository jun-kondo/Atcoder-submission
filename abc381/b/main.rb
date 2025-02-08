#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
if s.size.even? && s.reverse.slice(0, 2).uniq.size == 1 && s.tally.all? { |_, v| v == 2 }
  puts 'Yes'
else
  puts 'No'
end
