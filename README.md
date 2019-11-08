# genkaioとは...

某しりとりアプリの回答候補を表示するコマンド.

# 使い方

```bash
  COMMAND:
             genkaio - 某しりとりアプリの回答候補を表示.
  USAGE:
             genkaio [first hiragana] [length]
                     [-l, --line-number(default:10)]
                     [-e, --end(default:nil)]
             genkaio [--help]
             genkaio [-h]
  EXAMPLE:
             genkaio あ8
             genkaio あ 10 -l5 -e る
```

#インストール

- git clone https://github.com/eggplants/genkaio.git
- cd genkaio
- chmod 755 bin/*;mv bin/* ~/usr/local/bin
- mv dic/ ~/usr/local/bin
- (おいおいgemにするかも)

# 使用辞書

- [neologd/mecab-ipadic-neologd](https://github.com/neologd/mecab-ipadic-neologd)
	- the Apache License, Version 2.0

- [taku910/mecab](https://github.com/taku910/mecab)
	- the GNU General Public License

# 参考

- https://twitter.com/imadake398yen/status/1164291987169669120
