#!/usr/bin/env ruby
# frozen_string_literal: true

n = gets.to_i
buttons = Array.new(n) { gets.to_i }

current_index = 1
count = 0
visited = Set.new # 訪問履歴を管理するセット

while true
  if visited.include?(current_index)
    # 無限ループに陥った場合
    puts '-1'
    exit
  end

  visited.add(current_index)

  if buttons[current_index - 1] == 2
    # ボタン2が光った場合
    count += 1
    puts count
    exit
  end

  # 次に進む
  current_index = buttons[current_index - 1]
  count += 1
end
