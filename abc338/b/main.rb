#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
s = s.chars.tally.to_a.map { |k, v| [-v, k] }.sort
puts s[0][1]
