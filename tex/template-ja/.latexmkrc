# latexmk 設定: XeLaTeX + bibtex でビルド
$pdf_mode = 5;  # xelatex (xdv 経由)
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -halt-on-error %O %S';
$bibtex_use = 2;
@default_files = ('slide.tex');
$clean_ext = 'nav snm synctex.gz bbl';
