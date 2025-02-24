#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = '1'
(0...n).each { s += '01' }
puts s
