#!/usr/bin/env ruby
# frozen_string_literal: true

require 'ac-library-rb/dsu'
include AcLibraryRb

n, m = gets.split.map(&:to_i)
ans = 0
uf = DSU.new(n)

m.times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  if uf.same(a, b)
    ans += 1
    next
  end

  uf.merge(a, b)
end
puts ans

# DSUを使用する
# 入力毎に頂点a, b間に辺を追加するという考え方
# DSU.same がTrueの場合に辺を追加するとサイクルが形成されて森にはならなくなってしまうので
# 余計な辺としてカウントする。ans += 1
# sameとsame?はエイリアス
