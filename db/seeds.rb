# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ＜都道府県＞
Prefecture.create!(name: "北海道")
Prefecture.create!(name:"青森県")
Prefecture.create!(name:"岩手県")
Prefecture.create!(name:"宮城県")
Prefecture.create!(name:"秋田県")
Prefecture.create!(name:"山形県")
Prefecture.create!(name:"福島県")
Prefecture.create!(name:"茨城県")
Prefecture.create!(name:"栃木県")
Prefecture.create!(name:"群馬県")
Prefecture.create!(name:"埼玉県")
Prefecture.create!(name:"千葉県")
Prefecture.create!(name:"東京都")
Prefecture.create!(name:"神奈川県")
Prefecture.create!(name:"新潟県")
Prefecture.create!(name:"富山県")
Prefecture.create!(name:"石川県")
Prefecture.create!(name:"福井県")
Prefecture.create!(name:"山梨県")
Prefecture.create!(name:"長野県")
Prefecture.create!(name:"岐阜県")
Prefecture.create!(name:"静岡県")
Prefecture.create!(name:"愛知県")
Prefecture.create!(name:"三重県")
Prefecture.create!(name:"滋賀県")
Prefecture.create!(name:"京都府")
Prefecture.create!(name:"大阪府")
Prefecture.create!(name:"兵庫県")
Prefecture.create!(name:"奈良県")
Prefecture.create!(name:"和歌山県")
Prefecture.create!(name:"鳥取県")
Prefecture.create!(name:"島根県")
Prefecture.create!(name:"岡山県")
Prefecture.create!(name:"広島県")
Prefecture.create!(name:"山口県")
Prefecture.create!(name:"徳島県")
Prefecture.create!(name:"香川県")
Prefecture.create!(name:"愛媛県")
Prefecture.create!(name:"高知県")
Prefecture.create!(name:"福岡県")
Prefecture.create!(name:"佐賀県")
Prefecture.create!(name:"長崎県")
Prefecture.create!(name:"熊本県")
Prefecture.create!(name:"大分県")
Prefecture.create!(name:"宮崎県")
Prefecture.create!(name:"鹿児島県")
Prefecture.create!(name:"沖縄県")

# ＜スポーツ一覧＞
@sport = Sport.create!(name:'テニス')
@sport = Sport.create!(name:'野球')
@sport = Sport.create!(name:'サッカー')
@sport = Sport.create!(name:'フットサル')
@sport = Sport.create!(name:'バスケットボール')
@sport = Sport.create!(name:'ゴルフ')
@sport = Sport.create!(name:'バレーボール')
@sport = Sport.create!(name:'バトミントン')
@sport = Sport.create!(name:'卓球')
@sport = Sport.create!(name:'ラクロス')
@sport = Sport.create!(name:'ゲートボール')
@sport = Sport.create!(name:'スカッシュ')
@sport = Sport.create!(name:'ランニング・マラソン')
@sport = Sport.create!(name:'水泳')
@sport = Sport.create!(name:'ヨガ')
@sport = Sport.create!(name:'ダンス')
@sport = Sport.create!(name:'射撃')
@sport = Sport.create!(name:'スキー')
@sport = Sport.create!(name:'フィギュアスケート')
@sport = Sport.create!(name:'相撲')
@sport = Sport.create!(name:'剣道')
@sport = Sport.create!(name:'ボクシング')
@sport = Sport.create!(name:'ムエイタイ')
@sport = Sport.create!(name:'総合格闘技')
@sport = Sport.create!(name:'モータースポーツ')
@sport = Sport.create!(name:'ストリートサッカー')
@sport = Sport.create!(name:'サーフィン')
@sport = Sport.create!(name:'ラグビー')
@sport = Sport.create!(name:'アメリカンフットボール')
@sport = Sport.create!(name:'ハンドボール')
@sport = Sport.create!(name:'クリケット')
@sport = Sport.create!(name:'ドッチボール')
@sport = Sport.create!(name:'ボウリング')
@sport = Sport.create!(name:'ビリヤード')
@sport = Sport.create!(name:'陸上')
@sport = Sport.create!(name:'フィットネス')
@sport = Sport.create!(name:'ボルタリング')
@sport = Sport.create!(name:'体操')
@sport = Sport.create!(name:'サイクリング')
@sport = Sport.create!(name:'ダーツ')
@sport = Sport.create!(name:'スノーボード')
@sport = Sport.create!(name:'アイスホッケー')
@sport = Sport.create!(name:'柔道')
@sport = Sport.create!(name:'空手')
@sport = Sport.create!(name:'フェンシング')
@sport = Sport.create!(name:'レスリング')
@sport = Sport.create!(name:'テコンドー')
@sport = Sport.create!(name:'F1')
@sport = Sport.create!(name:'アウトドアスポーツ')

# ＜ユーザー一覧＞
User.create!(email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")
             
User.create!(email: "saito75061@yahoo.co.jp",
             password:              "3110yahoo",
             password_confirmation: "3110yahoo",
             admin: true)
             
99.times do |n|
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(email: email,
              password:              password,
              password_confirmation: password)
end

# ＜募集一覧＞

  Micropost.create(content: "募集中", user_id: "1", prefecture_id: "1", sport_id: "1")
  Micropost.create(content: "募集中", user_id: "1", prefecture_id: "2", sport_id: "1")
  Micropost.create(content: "募集中", user_id: "1", prefecture_id: "3", sport_id: "2")
  Micropost.create(content: "募集中", user_id: "1", prefecture_id: "4", sport_id: "2")
  Micropost.create(content: "募集中", user_id: "2", prefecture_id: "1", sport_id: "1")
  Micropost.create(content: "募集中", user_id: "2", prefecture_id: "2", sport_id: "1")
  Micropost.create(content: "募集中", user_id: "2", prefecture_id: "3", sport_id: "2")
  Micropost.create(content: "募集中", user_id: "2", prefecture_id: "4", sport_id: "2")


# リレーションシップ
  users = User.all
  user  = users.first
  following = users[2..50]
  followers = users[3..40]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }