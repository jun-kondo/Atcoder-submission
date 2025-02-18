#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
x = [1, 2, 3]
x.delete(a)
x.delete(b)
x.size == 1 ? puts(x.first) : puts(-1)
