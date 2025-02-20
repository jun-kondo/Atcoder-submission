#!/usr/bin/env ruby
# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).uniq
ans = k * (k + 1) / 2
a.each { |ai| ans -= ai if ai <= k }
puts ans
