#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
start = nil
endo = nil
s.each_char.with_index do |c, i|
  if c == '|' && start
    endo = i
  elsif c == '|'
    start = i
  end
end
s.slice!(start..endo)
puts s
