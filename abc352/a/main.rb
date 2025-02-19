#!/usr/bin/env ruby
# frozen_string_literal: true

n, x, y, z = gets.split.map(&:to_i)
xy = x < y ? (x..y).to_a : (y..x).to_a
xy.include?(z) ? puts('Yes') : puts('No')
