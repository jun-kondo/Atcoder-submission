#!/usr/bin/env ruby
# frozen_string_literal: true

n, k, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.insert(k, x)
puts a.join(' ')
