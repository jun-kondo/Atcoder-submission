#!/usr/bin/env ruby
# frozen_string_literal: true

s = Array.new(8) { gets.chomp.chars }
s2 = s.transpose
r = s.each.count { |row| !row.include?('#') }
c = s2.each.count { |col| !col.include?('#') }
puts r * c
