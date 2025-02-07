#!/usr/bin/env ruby
# frozen_string_literal: true

A = gets.split.map(&:to_i)
puts A.uniq.size == 2 ? 'Yes' : 'No'
