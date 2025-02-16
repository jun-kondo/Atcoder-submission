#!/usr/bin/env ruby
# frozen_string_literal: true

s1, s2 = gets.split

if s1 == 'sick' && s2 == 'sick'
  puts '1'
elsif s1 == 'sick'
  puts '2'
elsif s2 == 'sick'
  puts '3'
else
  puts '4'
end
