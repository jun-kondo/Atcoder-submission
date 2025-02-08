#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
puts n.digits.tally == { 3 => 3, 2 => 2, 1 => 1 } ? 'Yes' : 'No'
