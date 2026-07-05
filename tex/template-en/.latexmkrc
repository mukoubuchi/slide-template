# latexmk configuration: build with XeLaTeX + bibtex
$pdf_mode = 5;  # xelatex (via xdv)
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -halt-on-error %O %S';
$bibtex_use = 2;
@default_files = ('slide.tex');
$clean_ext = 'nav snm synctex.gz bbl';
