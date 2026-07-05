# template-ja — 発表スライドテンプレート (16:9, 日本語)

新しい発表を作るときは**このフォルダごとコピー**して使う汎用テンプレート。
機能のサンプル(強調マクロ・ブロック・TikZ・引用)を兼ねる。
英語版は [`../template-en/`](../template-en/) を参照。

## 使い方

```sh
cp -R template-ja ../talks/2026-07-発表名   # フォルダごとコピー
# slide.tex 冒頭の「発表情報」ブロックを書き換える
latexmk        # XeLaTeX + bibtex でビルド
latexmk -c     # 中間ファイルの削除
```

## ファイル構成

| ファイル | 役割 |
| --- | --- |
| `slide.tex` | スライド本体(機能サンプル入り)。発表情報はここで設定 |
| `slidestyle.sty` | 全設定を集約(フォント・配色・テーマ・TikZ・マクロ)。§3 は AAU Simple Beamer Theme v1.3.2 (© 2014 Jesper Kjær Nielsen, GPL v3+) を統合・簡素化 |
| `references.bib` | 文献DB(発表ごとにここへ追記) |
| `Figs/` | 画像(右上サークル用 `gugugaga-icon.png`・表紙の所属ロゴ `gugugaga-logo.png`・メールアイコン `email.eps`) |

## 参考文献

- 処理系は標準の `bibtex`、スタイルは番号形式の `plain`
- `\cite{キー}` で引用すると上付きターコイズの番号 (例: ¹⁾) になり、
  References フレームには**引用した文献だけ**が載る

## カスタマイズポイント

- **画角**: `aspectratio=169`(4:3 に戻すときは削除)
- **表紙**(タイトルボックス / 日付 / 著者 / 所属ロゴ / # イベント名):
  所属ロゴは `\titlegraphic{\includegraphics[height=1.5em]{Figs/...}}`、
  イベント名は `\renewcommand{\aauEvent}{...}`(空なら枠ごと非表示)
- **ヘッダのメール**: `\renewcommand{\aauEmail}{...}`。
  プレースホルダ「メールアドレス」のままならリンク無効。
  自分のアドレス(`@` を含む)に置換すると mailto リンクが有効になる
- **ヘッダのアイコン・ロゴ**: `\aauEmailIcon` / `\aauLogo`
- **フォント**: `slidestyle.sty` §1(Rounded-X Mgen+ → ヒラギノ丸ゴに自動フォールバック)
- **配色**: `slidestyle.sty` §2(基調色 `agu`、アクセント `agu2`)

## ライセンス

このテンプレートは `GPL-3.0-or-later` です。詳細は [`../../LICENSE`](../../LICENSE) を参照してください。
