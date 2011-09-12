(TeX-add-style-hook "preface"
 (lambda ()
    (TeX-add-symbols
     '("blurb" 1)
     '("myMargin" 1)
     "margin")
    (TeX-run-style-hooks
     "cclicenses"
     "pxfonts"
     "listings"
     "hypcap"
     "all"
     "hyperref"
     "subfigure"
     "fontenc"
     "T1"
     "xcolor"
     "table"
     "lscape"
     "pdflscape"
     "textcomp"
     "natbib"
     "setspace"
     "fancyhdr"
     "ltablex"
     "fancybox"
     "enumerate"
     "amsfonts"
     "amsthm"
     "amssymb"
     "amsmath"
     "graphicx"
     "debugshow"
     "final"
     "latex2e"
     "art11"
     "article"
     "11pt"
     "letterpaper")))

