#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

s.match?(/ab/) || s.match?(/ba/) ? puts('Yes') : puts('No')
