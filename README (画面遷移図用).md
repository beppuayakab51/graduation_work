# graduate_work
■サービス概要
読書を記録するアプリ。自分が読んだ本を記録、未読の本を記録し、月ごとの読書量を記録します。
また、本の日記を残したり、わからないことや感じたこと、そのほかの関連性を記します。
また、本に関連した場所巡りの予定を書き込むことができます。

■ このサービスへの思い・作りたい理由
最近本を読み始めたものの、付箋だらけになってしまったり、何を調べたかったか忘れてしまったり、調べたけど忘れてしまったり、他の書籍を参照したいものの、どこだったか忘れてしまったり。
するため、まとめて本に関連する記録アプリを作りたいと感じたためです。

逆に、共有する機能は、読書の阻害になる可能性を考えたため、SNSのような共有機能はつけません。


■ ユーザー層について
本を読む人、記録したい人、調べたい人

■サービスの利用イメージ
・読破した本を記録し、自分の読書量を参照する。
・未読した本を記録し、どれを買いたいか目安にする。
・わからないことを記録し、今後何の本を購入するか検討する。
・洋書の翻訳練習

洋書の翻訳を除き、基本的にスマホなどの活用を想定。

■ ユーザーの獲得について
アプリとしてDLしてもらうことを想定しています。

■ サービスの差別化ポイント・推しポイント
ただ本を記録するだけでなく、さらに踏み込んだ活用。
同じ内容を解説している本でも、著者の見解がことなることがあるため、事実確認や自分の考えを深めやすくする。（タグ機能をつくって、すり合わせできるようにする）

■ 機能候補
【MVPリリースまでに】
・HOME画面　　　　　　：最初の画面
・ユーザー登録
・ログイン機能
・パスワード変更
・メールアドレス変更
・本棚　　　　　　　　：本のリスト。概要や思ったことなどを本に紐づけて、書くことができる。
　　↳追加機能
　　↳閲覧機能
　　↳編集機能
　　↳削除機能
　　↳お気に入り登録機能
　　↳未読、読破、お気に入り機能に絞る機能
　　↳未購入の本を検索し、登録できる機能

・ノート　　　　　　　：ノート機能。調べたいことや調べたことを書き込む。
　↳ 追加機能
　↳ 閲覧機能
　↳ 編集機能
  ↳ 削除機能
  ↳ 完成、書いてる最中、書く予定のノートに絞る機能

・本旅MAP　　　　　　　：訪ねたい本屋、本カフェなどを書き込みます。
　↳ 追加機能
　↳ 閲覧機能
　↳ 編集機能
  ↳ 削除機能

【本リリースまでに】　

・洋書翻訳　　　　　　　：洋書を翻訳して記録する。
　↳ 追加機能
　↳ 閲覧機能
　↳ 編集機能
  ↳ 削除機能
  ↳ 選択した箇所に対しての自動翻訳
  ↳ 単語の登録　

■ 機能の実装方針予定
検索と翻訳ができるAPIを候補としてあげています。

DeepLAPI　　　　　　 :https://www.deepl.com/ja/pro-api
国立国会図書館サーチ ：https://ndlsearch.ndl.go.jp/help/api/specifications#sec2
Googlebooks APIs　　：https://developers.google.com/books?hl=ja

（遷移図）### 画面遷移図
Figma：
https://www.figma.com/board/weYtS4uFR9crkjTLiiMYnv/%E7%94%BB%E5%83%8F%E9%81%B7%E7%A7%BB%E5%9B%B3?t=bVHh9UPXUzO2aMW2-1

HOME　　　　　　　：https://www.figma.com/board/weYtS4uFR9crkjTLiiMYnv/%E7%94%BB%E5%83%8F%E9%81%B7%E7%A7%BB%E5%9B%B3?t=bVHh9UPXUzO2aMW2-1
ユーザー登録　　　：https://www.figma.com/design/EOFNse9t4zcWUN9jVKBZ58/%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E7%99%BB%E9%8C%B2?m=auto&t=bVHh9UPXUzO2aMW2-1
ログイン　　　　　：https://www.figma.com/design/fZM97LOM7V7nh0sbP9U2q3/%E3%83%AD%E3%82%B0%E3%82%A4%E3%83%B3?m=auto&t=bVHh9UPXUzO2aMW2-1
パスワード変更　　：https://www.figma.com/design/hjPzzhNYmprWp22h79RjUE/%E3%83%91%E3%82%B9%E3%83%AF%E3%83%BC%E3%83%89%E3%81%AE%E5%A4%89%E6%9B%B4?m=auto&t=bVHh9UPXUzO2aMW2-1
メールアドレス変更：https://www.figma.com/design/mmVKMe6QbiLQ0Xct2FKZWS/%E3%83%A1%E3%83%BC%E3%83%AB%E3%82%A2%E3%83%89%E3%83%AC%E3%82%B9%E3%81%AE%E5%A4%89%E6%9B%B4?m=auto&t=bVHh9UPXUzO2aMW2-1

▽本棚
本棚　　　　　　　：https://www.figma.com/design/oe2gRqeYVckmJkm4baoqT4/%E6%9C%AC%E6%A3%9A?m=auto&t=bVHh9UPXUzO2aMW2-1
本を探す　　　　　：https://www.figma.com/design/Dl8FvP8YXq9eM8ARKD2jNO/%E6%9C%AC%E6%A3%9A_%E6%9C%AC%E3%82%92%E6%A4%9C%E7%B4%A2?m=auto&t=bVHh9UPXUzO2aMW2-1

▽ノート
ノート　　　　　　：https://www.figma.com/design/fdFQsvxtjuw3dTcygsRNQn/%E3%83%8E%E3%83%BC%E3%83%88?m=auto&t=bVHh9UPXUzO2aMW2-1

▽本棚とノート共通
編集　　　　　　　：https://www.figma.com/design/6hEQnGetuNDmZ9qTOrD6Sv/%E3%83%8E%E3%83%BC%E3%83%88%2F%E6%9C%AC%E6%A3%9A_%E7%B7%A8%E9%9B%86%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1
詳細　　　　　　　：https://www.figma.com/design/wgepug5zsnyDto9h1gYmxH/%E6%9C%AC%E6%A3%9A%2F%E3%83%8E%E3%83%BC%E3%83%88_%E8%A9%B3%E7%B4%B0%E3%83%9A%E3%83%BC%E3%82%B8?t=bVHh9UPXUzO2aMW2-1

▽本旅
本旅　　　　　　　：https://www.figma.com/design/lrPtO82qtFmrXkix0UEXvz/%E6%9C%AC%E6%97%85?m=auto&t=bVHh9UPXUzO2aMW2-1
編集　　　　　　　：https://www.figma.com/design/CTkIwhzQ27YaGuMOy15AKr/%E6%9C%AC%E6%97%85_%E7%B7%A8%E9%9B%86%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1
詳細　　　　　　　：https://www.figma.com/design/BEHCyVriporIxvItdpk9Qu/%E6%9C%AC%E6%97%85%E8%A9%B3%E7%B4%B0%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1

▽洋書翻訳
洋書　　　　　　　：https://www.figma.com/design/UcemdAjoGSmoDsg08rIGoG/%E6%B4%8B%E6%9B%B8%E7%BF%BB%E8%A8%B3%E3%83%AA%E3%82%B9%E3%83%88?m=auto&t=bVHh9UPXUzO2aMW2-1
編集　　　　　　　：https://www.figma.com/design/GUzEpSvdGDZRQ2tsPNh6CC/%E6%B4%8B%E6%9B%B8%E7%BF%BB%E8%A8%B3_%E7%B7%A8%E9%9B%86%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1
閲覧　　　　　　　：https://www.figma.com/design/waJ2ZDr0pEcjo1mIhJRvOn/%E6%B4%8B%E6%9B%B8%E7%BF%BB%E8%A8%B3_%E9%96%B2%E8%A6%A7%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1
