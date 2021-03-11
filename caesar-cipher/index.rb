require 'pry'

def caesar_cipher(str, num)
  chars = ["A".."Z", "a".."z", ">".."@"].flat_map(&:to_a)
  transformed = chars.map{ |c| (c.ord + num).chr}
  str.tr(chars.join, transformed.join)
end

puts caesar_cipher("Hey there! Time to relax later", 1)

# answer: Ifz uifsf! Ujnf up sfmby mbufs
