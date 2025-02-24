#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
(s.length - 1).downto(1) do |i|
  if s[i - 1] + s[i] == 'WA'
    s[i - 1] = 'A'
    s[i] = 'C'
  end
end
puts s.join
