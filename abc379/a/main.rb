#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.chomp.chars
puts [(n[1] + n[2] + n[0]), (n[2] + n[0] + n[1])].join(' ')
