# REDEME
■サービス概要
洋書翻訳アプリ。自分で対訳本を作成し、リスト化します。
また、対訳本を作成にあたり、手助けをするためのマーカー機能と単語帳を搭載し
東京外国語大学が提供している、言語モジュールのリンクをつけています。
（リンクに関しては宣伝・営利目的でない限りは、使用可能としています。
　https://www.coelang.tufs.ac.jp/mt/about_site.html）

■ このサービスへの思い・作りたい理由
考えたアプリの中で一番差別化と個人的に一番需要があった機能であったため、洋書翻訳に特化させた機能としました。
翻訳するアプリはありますが、対訳アプリになるとそこまで数はなく、辞典を作るまではさほどないように感じました。

訳文はディスコードでひとまず記録しているものの。
翻訳サイト、辞典サイト、語源サイト、そのほかのサイト、文法のサイトを開き、時々、有識者にアドバイスをいただいたり
辞典を開こうにも、中英語での翻訳をしているため、最新の辞典だと意味合いがズレてしまったり、英語かと思ったら、ラテン語であったりするため
オリジナルの単語帳が必要だと感じました。

内容を知るだけならば、翻訳した本を買えば済む話ではあるものの。
翻訳された本は意訳であったり、プロの翻訳家でも、日本語化できないものが存在する場合があったり
創作からの観点からすると、翻訳したものを何かで引用する場合、訳文の著作権が発生するため
訳文を使用することが困難な場合があり、翻訳の手助けができることは、需要があるものだと考えています。

場合によっては、日本語訳では再現できない、詩的な価値も存在すると思うため、ユーザー層は比較的狭いものの
翻訳によって得られるものは、決して少なくはないと思います。

■ ユーザー層について
英語を学びたい人、翻訳したい人

■サービスの利用イメージ
・洋書の翻訳練習、創作の引用に使用するため、個人的な研究

■ ユーザーの獲得について
DLを行わない、ブラウザ上での利用。

■ サービスの差別化ポイント・推しポイント
対訳するだけでなく、自分だけの単語帳の作成が可能です。
わからないところなどあれば、マーカーで書き残し、今後の課題にもできます。

■ 機能候補
【MVPリリースまでに】
・HOME画面　　　　　　 ：最初の画面
・ユーザー登録
・ログイン機能
・パスワード変更
・メールアドレス変更
・洋書翻訳　　　　　　　：洋書を翻訳して記録する。
　↳ 追加機能
　↳ 閲覧機能
　↳ 編集機能
  ↳ 削除機能
  ↳ 言語モジュールリンクの搭載
  ↳ 作業状況の表示
  ↳ 単語の登録

・単語帳機能　　　　　　：自分で単語を登録し、辞書を作成する。
　　↳追加機能
　　↳閲覧機能
　　↳編集機能
　　↳削除機能
　　↳検索機能

【本リリースまでに】
・洋書翻訳
　↳ 登録した辞書からの単語検索
　↳ マーカー機能
　↳ 自動翻訳機能
　※以上の３点は編集ページの対象となる文章をカーソルで範囲選択し、クリックすることで適応されることを想定しています。
　（例：範囲選択 → アイコンのマーカーをクリック → 選択した部分にマーカーが引かれる。）

■ 機能の実装方針予定
DeepLAPI　　　　　　 :https://www.deepl.com/ja/pro-api
マーカーのイメージ　 ：https://qiita.com/ledsun/items/b2393f0ac5fa842829e7


# 画面遷移図
Figma：
https://www.figma.com/board/okFqBSsYZANWgCyrt2YvwZ/%E7%94%BB%E5%83%8F%E9%81%B7%E7%A7%BB%E5%9B%B3_2?node-id=0-1&t=rEpyJ37Mrz6IK5FD-1

HOME　　　　　　　：https://www.figma.com/board/weYtS4uFR9crkjTLiiMYnv/%E7%94%BB%E5%83%8F%E9%81%B7%E7%A7%BB%E5%9B%B3?t=bVHh9UPXUzO2aMW2-1
ユーザー登録　　　：https://www.figma.com/design/EOFNse9t4zcWUN9jVKBZ58/%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E7%99%BB%E9%8C%B2?m=auto&t=bVHh9UPXUzO2aMW2-1
ログイン　　　　　：https://www.figma.com/design/fZM97LOM7V7nh0sbP9U2q3/%E3%83%AD%E3%82%B0%E3%82%A4%E3%83%B3?m=auto&t=bVHh9UPXUzO2aMW2-1
パスワード変更　　：https://www.figma.com/design/hjPzzhNYmprWp22h79RjUE/%E3%83%91%E3%82%B9%E3%83%AF%E3%83%BC%E3%83%89%E3%81%AE%E5%A4%89%E6%9B%B4?m=auto&t=bVHh9UPXUzO2aMW2-1
メールアドレス変更：https://www.figma.com/design/mmVKMe6QbiLQ0Xct2FKZWS/%E3%83%A1%E3%83%BC%E3%83%AB%E3%82%A2%E3%83%89%E3%83%AC%E3%82%B9%E3%81%AE%E5%A4%89%E6%9B%B4?m=auto&t=bVHh9UPXUzO2aMW2-1

▽単語帳
単語帳　　　　　　　：https://www.figma.com/design/LpKPsCYbGpOfODOZUg8xfZ/%E5%8D%98%E8%AA%9E%E5%B8%B3?node-id=0-1&t=iSo7cLymDgz6K2et-1
詳細　　　　　　　：https://www.figma.com/design/eg6l4YjC5caPgVYIZ8jYvs/%E5%8D%98%E8%AA%9E%E5%B8%B3_%E8%A9%B3%E7%B4%B0%E3%83%9A%E3%83%BC%E3%82%B8?node-id=0-1&t=ESsrC8lz2dUXFybw-1
編集　　　　　　　：https://www.figma.com/design/lH4ZaX2FRDWrYcbsYhshCH/%E5%8D%98%E8%AA%9E%E5%B8%B3%EF%BC%BF%E7%B7%A8%E9%9B%86%E3%83%9A%E3%83%BC%E3%82%B8?node-id=0-1&t=x47Edjbit29Geo10-1

▽洋書翻訳
洋書　　　　　　　：https://www.figma.com/design/UcemdAjoGSmoDsg08rIGoG/%E6%B4%8B%E6%9B%B8%E7%BF%BB%E8%A8%B3%E3%83%AA%E3%82%B9%E3%83%88?m=auto&t=bVHh9UPXUzO2aMW2-1
編集　　　　　　　：https://www.figma.com/design/GUzEpSvdGDZRQ2tsPNh6CC/%E6%B4%8B%E6%9B%B8%E7%BF%BB%E8%A8%B3_%E7%B7%A8%E9%9B%86%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1
閲覧　　　　　　　：https://www.figma.com/design/waJ2ZDr0pEcjo1mIhJRvOn/%E6%B4%8B%E6%9B%B8%E7%BF%BB%E8%A8%B3_%E9%96%B2%E8%A6%A7%E3%83%9A%E3%83%BC%E3%82%B8?m=auto&t=bVHh9UPXUzO2aMW2-1


# ER図
https://drive.google.com/file/d/1Qn3L1tAUiu3QUCj6p3tTaIkLt-YbFJcG/view?usp=sharing
