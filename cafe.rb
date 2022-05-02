# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

total = 0

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i - 1
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  total += menus[order_number][:price].to_i
end

# puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
take_order(DRINKS)
# total += DRINKS[take_order(DRINKS)][:price].to_i

# puts 'フードメニューはいかがですか?'
take_order(FOODS)
# total += FOODS[take_order(FOODS)][:price].to_i

puts "お会計は#{total}円になります。ありがとうございました！"
