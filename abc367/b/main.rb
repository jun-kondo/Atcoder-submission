#!/usr/bin/env ruby
# frozen_string_literal: true

x = gets.chomp.chars
x.pop while x[-1] == '0'
x.pop if x[-1] == '.'
puts x.join
