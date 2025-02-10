#!/usr/bin/env ruby
# frozen_string_literal: true

m = gets.to_i
ans = []
ternary = m.to_s(3)
ternary.reverse.each_char.with_index { |c, i| ans.concat([i] * c.to_i) }
puts ans.size
puts ans.join(' ')
