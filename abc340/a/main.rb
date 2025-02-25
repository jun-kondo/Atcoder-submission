#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, d = gets.split.map(&:to_i)
puts (a..b).step(d).to_a.join(' ')
