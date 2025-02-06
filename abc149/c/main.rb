#!/usr/bin/env ruby
# frozen_string_literal: true

require 'prime'

n = gets.to_s.to_i  # 整数1つを受け取る(1行に1つ整数がある前提)#
prime = n.prime?

until prime
  n += 1
  prime = true if n.prime?
end

puts n
