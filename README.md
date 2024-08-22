# graduate_work
■サービス概要
このアプリは、自作が可能な「オリジナルデスクトップマスコット」です。デスクマスコットとは、デスクトップ上にキャラクターを表示し、あらゆるアクションを起こすアプリです。
デスクトップ上に、自作したキャラクターを表示させ、自律的に動くように演出されます。また、ユーザーのアクションによって、特定の反応をしめします。
ユーザーのアクションとは、アイテムを与えたり、クリックやドラックなどが該当します。

■ このサービスへの思い・作りたい理由
昔、デスクトップマスコット"しめじ"というものがあり。
それを眺めるのが趣味だったので、rubyで再現したいと考えています。
しめじは、デスクトップ上でキャラクターが動き回り、マウスでつまめたり、ブラウザを投げ飛ばすことをしていました。
無意味ながらも、むしろ邪魔を目的するような存在が好きでした。

又、眺めるだけでなく、育成シュミレーションゲームのように、"何かこちらからアクションする"ことで、"キャラクターが特定の動作"をおこす。
オリジナルのアクションをユーザーが演出することができるといった、創作性を足したいと考えています。（例：食べ物をあげるというアクションをする→キャラクターが食べるという動作を行うなど）

■ ユーザー層について
・決めたユーザー像
創作を好む人、絵を描く人

・対象の理由
キャラクターを壁紙にしたり
昔のWindows OSの案内役のイルカやドコモのiコンシェルにいた羊の案内人のようなキャラクター
そのようなものがあったので、デスクトップ上でいつもの壁紙であるキャラクターが動くと感動と嬉しいかもしれない。
また、企業が開発するように、昔ながらの需要はあると感じる。

今でもそういったデスクトップマスコットを作成する人もいるようなので、知名度は無いながらも、一定の需要は
ずっと存在しているように思えるからです。

■サービスの利用イメージ
デスクトップで好きなキャラクターを眺めることができる。
少しのシュミレーションゲームのように触れ合うことができる。反応をデスクトップマスコットの作成するような感覚で、創作することができる。

■ ユーザーの獲得について
DLする形で入手していただけることを想定しています。

■ サービスの差別化ポイント・推しポイント
しめじ(https://w.atwiki.jp/mascotshimeji/)
これは、画像ファイルを差し替えることで、
キャラクターを簡易的に差しかえることができ、様々なアクションを起こします。

差別化としては、
・アイテムをトリガーとして、別動作を作れる。ことです。

■ 機能候補
【MVPリリースまでに】
主な機能：
　キャラクター動作
　・キャラクターがデスクトップ上に表示され、様々な動作をランダムで行う。この動作は必須で設定が必要。
　　デスクトップの端は、壁や地面として想定し、重力が働いているかのように見せる。上に向かって歩くなどはできない。これはしめじと同様。
　（想定される動き：デスクトップ上で歩く・座る・寝る・立つ）

　リアクション機能
　・ユーザーがキャラクターに対して、アクションを起こすことで、キャラクターがそれに応じた反応を示す。
　　⇒ユーザーのアクション：クリック、ドラッグ、アイテムを与える、連続的なクリック、ドラッグ⇒マウスからすぐ手を放す、長期的な放置
　　⇒アクションに対してのリアクション：
　　それぞれの特定のアクションに対して、キャラクターのリアクションが以下の通りに設定ができます。
　　　１．反応用のキャラクターの画像（例：クリックされたら、キャラクターが驚く画像に切り替わる）
　　　２．テキストで吹き出しがついたセリフを出す。
　　　３．リアクションの条件を設定する。（アクションを起こした時間帯、何％で発生するか）
　　　４．アイテムに対して、特定のリアクションを返された場合、アイテムは消滅するかどうか。
　　　（例：食べ物を与えた場合、消費物として消滅する。）
　　　（ただし、消費した場合においても、アイテムは、アイテム欄には残っており、またデスクトップ上に出すことができる。）
　　　５．動作を繰り返すかどうか。

　画像について
　・png形式を基本とする。また、画像ファイルに特定の名称で追加することで、反映できるものとします。(画像の名前は、「動作名_数字.png」)
　数字は、動作を表現する際の順番になります。（例：「右足を出す画像」⇒「左足を出す画像」を歩く動作として表現したい場合、「歩く_1.png」(右足を出す画像)⇒「歩く_2.png」(左足を出す画像)→3がなければ、1を繰り返す。　基本動作以外は、リアクション機能に応じて、一回だけの動作か、連続的な動作か決めることができる。（リアクション機能の５）
　gifアニメーションでの代用は可能としたい。この場合は、何枚も用意せずに、１枚で完結することを想定とします。）

【本リリースまでに】　　
　アイテム機能
　・ユーザーはアイテム欄に対して、画像を設定する。
　　設定することで、アイテム欄からデスクトップ上に配置、もしくは、キャラクターに与えることができる。
　　　配置した箇所で固定となり、キャラクターが接触した場合、リアクション機能の内容に応じてリアクションを返す。
　　　（例：椅子をアイテム欄に設定し、デスクトップ上で配置し、リアクション機能において、一定の確率で座るという動作を行うという設定を行うなど）

　感情機能
　・リアクション機能に、喜怒哀楽それぞれの感情パラメーターを設定し、リアクションごとに増減するパラメーターを設定する。
　　また、パラメーターに応じて、反応が変化する。リアクション機能の条件に感情を追加する。

■ 機能の実装方針予定
ライブラリDXRuby(https://mirichi.github.io/dxruby-doc/index.html)やgosu(https://www.libgosu.org/)を利用して、画像描画を行うことを考えています。
