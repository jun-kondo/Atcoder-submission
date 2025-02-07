#!/usr/bin/env ruby
# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)
len = a + b
ans = (n / len) * a + [(n % len), a].min
puts ans
