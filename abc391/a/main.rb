#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
case s
when 'N'
  puts 'S'
when 'E'
  puts 'W'
when 'W'
  puts 'E'
when 'S'
  puts 'N'
when 'NE'
  puts 'SW'
when 'NW'
  puts 'SE'
when 'SE'
  puts 'NW'
when 'SW'
  puts 'NE'
end
