(TeX-add-style-hook
 "JSB_tekstelePP"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "style=authoryear" "backend=biber" "backref=true" "urldate=short") ("varioref" "polish") ("setspace" "doublespacing") ("preview" "xetex")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "JSB_tekstele-tekstPP"
    "mwart"
    "mwart10"
    "fontspec"
    "polyglossia"
    "etoolbox"
    "csquotes"
    "wrapfig"
    "biblatex"
    "metalogo"
    "varioref"
    "relsize"
    "hyperref"
    "graphicx"
    "url"
    "setspace"
    "preview")
   (TeX-add-symbols
    '("prname" 1)
    '("acode" 1)
    '("aname" 1)
    '("mcode" 1)
    '("mname" 1)
    '("ucode" 1)
    '("uname" 1)
    "eob"
    "orogate")
   (LaTeX-add-bibliographies
    "all")
   (LaTeX-add-polyglossia-langs
    '("polish" "mainlanguage" "")
    '("english" "otherlanguage" "")))
 :latex)

