#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
sc = Array.new(n) { gets.split }.sort
sum = sc.sum { |c| c[1].to_i }
puts sc[(sum % n)][0]
