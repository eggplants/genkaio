[![Gem Version](https://badge.fury.io/rb/genkaio.svg)](https://badge.fury.io/rb/genkaio)

# genkaioとは...

某しりとりアプリの回答候補を表示するコマンド.

# DEMO

![DEMO](https://raw.githubusercontent.com/eggplants/genkaio/master/demo.gif)


## インストール

```bash
$ gem install genkaio
```

## 使い方

```bash
  COMMAND:
             genkaio - 某しりとりアプリの回答候補を表示.
  USAGE:
             genkaio [first hiragana] [length]
                     [-l, --line-number(default:10)]
                     [-e, -f, --end(default:nil)]
             genkaio [--help]
             genkaio [-h]
  EXAMPLE:
             $ genkaio あ8
             $ genkaio あ 10 -l5 -e る
```

## 実行例

```bash
#"る"から始まる8文字言葉を最大10行表示
$ genkaio る8
るやんべない川 るやんべないがわ
るくしにころ川 るくしにころがわ
るーむふぃーるど るーむふぃーるど
るかーしぇびっち るかーしぇびっち

#"あ"から始まり"い"で終わる10文字言葉を最大10行表示
$ genkaio あ10 -e い
網目状解体 あみめじょうかいたい
浅川学園台 あさかわがくえんだい
青山学院大 あおやまがくいんだい
あしなが育英会 あしながいくえいかい
愛知淑徳大 あいちしゅくとくだい
旭中部資材 あさひちゅうぶしざい
芦屋女子短大 あしやじょしたんだい
秋田睦合成 あきたむつみごうせい
赤目町一の井 あかめちょういちのい
足近町小荒井 あぢかちょうこあらい

#"わ"から始まる14文字言葉を最大5行表示
$ genkaio わ14 -l5
若狭野町東後明 わかさのちょうひがしごみょう
和歌山県立医科大学 わかやまけんりついかだいがく
和光経済研究所 わこうけいざいけんきゅうしょ
わーなー・こみゅにけーしょんず わーなーこみゅにけーしょんず

```

## 使用辞書

- [neologd/mecab-ipadic-neologd](https://github.com/neologd/mecab-ipadic-neologd)
	- the Apache License, Version 2.0

- [taku910/mecab](https://github.com/taku910/mecab)
	- the GNU General Public License

## 参考

- https://twitter.com/imadake398yen/status/1164291987169669120
