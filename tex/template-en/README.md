# template-en — presentation slide template (16:9, English)

A general-purpose template: **copy this whole folder** whenever you start a
new talk. It doubles as a sample of the available features (emphasis macros,
blocks, TikZ, citations). For the Japanese version see
[`../template-ja/`](../template-ja/).

## Usage

```sh
cp -R template-en ../talks/2026-07-talk-name   # copy the whole folder
# edit the "presentation info" block at the top of slide.tex
latexmk        # build with XeLaTeX + bibtex
latexmk -c     # remove intermediate files
```

## Files

| File | Role |
| --- | --- |
| `slide.tex` | The slides (with feature samples). Set the presentation info here |
| `slidestyle.sty` | All settings in one place (fonts, colors, theme, TikZ, macros). §3 merges and simplifies the AAU Simple Beamer Theme v1.3.2 (© 2014 Jesper Kjær Nielsen, GPL v3+) |
| `references.bib` | Bibliography database (append per talk) |
| `Figs/` | Images (`gugugaga-icon.png` for the top-right circle, `gugugaga-logo.png` for the title page, `email.eps` for the e-mail icon) |

## Bibliography

- Processed with standard `bibtex` and the numeric `plain` style
- `\cite{key}` produces a superscript turquoise number (e.g. ¹⁾), and the
  References frame lists **only the cited entries**

## Customization

- **Aspect ratio**: `aspectratio=169` (remove it to go back to 4:3)
- **Title page** (title box / date / author / affiliation logo / "# event name"):
  set the logo with `\titlegraphic{\includegraphics[height=1.5em]{Figs/...}}`
  and the event name with `\renewcommand{\aauEvent}{...}` (hidden when empty)
- **Header e-mail**: `\renewcommand{\aauEmail}{...}`.
  The "Email Address" placeholder stays unlinked; replace it with your real
  address (containing `@`) to activate the mailto link
- **Header icon and logo**: `\aauEmailIcon` / `\aauLogo`
- **Fonts**: `slidestyle.sty` §1 (Rounded-X Mgen+, falling back to Hiragino
  Maru Gothic ProN automatically)
- **Colors**: `slidestyle.sty` §2 (base color `agu`, accent `agu2`)

## License

This template is licensed under `GPL-3.0-or-later`; see [`../../LICENSE`](../../LICENSE).
