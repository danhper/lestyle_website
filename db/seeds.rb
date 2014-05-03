# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


PagesText.find_or_create_by(identifier: 'about_short_title') do |p|
  p.content = 'Café Styleと改名しおしゃれなガストロカフェに
大変身'
end

PagesText.find_or_create_by(identifier: 'about_short_content') do |p|
  p.content = ' 自家焙煎で香高いフレッシュなコーヒー、すっきりした味へのこだわりを大切にしています。
荻窪ブレンド　すずらんブレンド　ほろ苦ブレンドその他ストレートコーヒーの販売、イチジク入りの焼きチースケーキ、ガトーアラバナーヌ等、当店オリジナルケーキはすべてホームメイド　豆乳使用して軽やかな味です。
新たにキューバランチを始めます。
キューバ人プロデュースの野菜いっぱいヘルシーなお料理 モヒートを楽しみながら　カリブ旅行気分を楽しんでください。
サルサイベントの参加もいかがでしょうか。'
end

PagesText.find_or_create_by(identifier: 'about_title') do |p|
  p.content = 'Café Styleと改名しおしゃれなガストロカフェに
大変身'
end

PagesText.find_or_create_by(identifier: 'about_content') do |p|
  p.content = ' 自家焙煎で香高いフレッシュなコーヒー、すっきりした味へのこだわりを大切にしています。
荻窪ブレンド　すずらんブレンド　ほろ苦ブレンドその他ストレートコーヒーの販売、イチジク入りの焼きチースケーキ、ガトーアラバナーヌ等、当店オリジナルケーキはすべてホームメイド　豆乳使用して軽やかな味です。
新たにキューバランチを始めます。
キューバ人プロデュースの野菜いっぱいヘルシーなお料理 モヒートを楽しみながら　カリブ旅行気分を楽しんでください。
サルサイベントの参加もいかがでしょうか。'
end
