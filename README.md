# slide-template

[![build](https://github.com/mukoubuchi/slide-template/actions/workflows/build.yml/badge.svg)](https://github.com/mukoubuchi/slide-template/actions/workflows/build.yml)
[![License: GPL-3.0-or-later](https://img.shields.io/badge/license-GPL--3.0--or--later-blue)](LICENSE)
![XeLaTeX](https://img.shields.io/badge/XeLaTeX-required-008080)
![Beamer](https://img.shields.io/badge/Beamer-16%3A9-2f855a)
![Templates](https://img.shields.io/badge/templates-English%20%2B%20Japanese-555555)

XeLaTeX + Beamer presentation slide templates (16:9) with a dark-green theme,
a header band, and a circular progress indicator in the top-right corner.

<p align="center">
  <img src=".github/release-assets/v1.0.0/title-ja.png" width="49%" alt="Title page of the Japanese template: a rounded dark-green title box, date, author, affiliation logo, and an event-name ribbon at the bottom">
  <img src=".github/release-assets/v1.0.0/sample-slide-en.png" width="49%" alt="A sample definition slide from the English template with a blue definition block, an itemized element list, and a red Point block">
</p>

| Directory | Description |
| --- | --- |
| [`tex/template-ja/`](tex/template-ja/) | Japanese template (README and comments in Japanese) |
| [`tex/template-en/`](tex/template-en/) | English template, frame-for-frame parallel to the Japanese one |

## Quick start

```sh
cd tex/template-en   # or tex/template-ja
latexmk              # build slide.pdf with XeLaTeX + bibtex
latexmk -c           # remove intermediate files
```

To start a new talk, copy the whole template folder and edit the
"presentation info" block at the top of `slide.tex`. See each template's
README for details.

Prebuilt PDFs (`slide-ja.pdf` / `slide-en.pdf`) are attached to each
[release](https://github.com/mukoubuchi/slide-template/releases), so you can
preview both templates without a TeX installation.

## Continuous integration

GitHub Actions ([`build.yml`](.github/workflows/build.yml)) builds both
templates on every pull request, and attaches the built PDFs to the release
when a `v*` tag is pushed.

## Requirements

- TeX Live (XeLaTeX and `latexmk`)
- Fonts: uses **Rounded-X Mgen+** if installed, otherwise falls back to
  **Hiragino Maru Gothic ProN** (bundled with macOS). The monospace font
  falls back from Comic Sans MS to Menlo. On non-macOS systems, adjust §1
  of `slidestyle.sty` to fonts available on your machine

## Features

- Title page with a rounded title box, affiliation logo, and an optional
  "# event name" ribbon
- Header with author, e-mail, and title; the e-mail becomes a mailto link
  only after you replace the placeholder with a real address
- Progress circle showing the current frame number over an arc
- Automatic table-of-contents slides at each `\section`
- Emphasis macros, badges, keystroke rendering, jump buttons, block
  environments (incl. exercise/assignment), and TikZ samples
- Citations as superscript numbers; the References frame lists only cited
  entries

## Credits

The title page, header, and progress circle are merged and simplified from
the [AAU Simple Beamer Theme](https://github.com/jkjaer/aauLatexTemplates)
v1.3.2 (© 2014 Jesper Kjær Nielsen, GPL v3+) in §3 of `slidestyle.sty`.

## License

This project is licensed under the
[GNU General Public License v3.0 or later](LICENSE) (`GPL-3.0-or-later`).
