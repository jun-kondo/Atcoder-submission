#!/usr/bin/env ruby
# frozen_string_literal: true

a = gets.split.map(&:to_i).sort
puts a[0] * a[1] == a[2] ? 'Yes' : 'No'
