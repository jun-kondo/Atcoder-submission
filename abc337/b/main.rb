#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
if s.match?(/\AA*B*C*\z/)
  puts 'Yes'
else
  puts 'No'
end
