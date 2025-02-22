#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
c = s.tally.key(1)
puts s.index(c).succ
