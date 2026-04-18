(TeX-add-style-hook
 "JSB_tekstele-tekstPP"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (LaTeX-add-labels
    "sec:wstp"
    "fig:orogate"
    "sec:geneza-stand-unic"
    "sec:znaki-unicode-i"
    "sec:forma-stand-unic"
    "sec:znaki-prywatne"
    "sec:tekstele"
    "sec:analiza-przypadku"
    "fig:Strzelczyk"
    "fig:parkosz1907"
    "fig:GoldenDict"
    "fig:indeks"
    "sec:anal-przyp-nowy"
    "fig:NKP054"
    "fig:NKP055"
    "fig:NKP063"
    "virgula"
    "fig:SpXVIw6-303"
    "fig:SpXVIw31-221"
    "fig:SpXVw33-174"
    "fig:SpXVIw33-261"
    "fig:NKP054html"
    "fig:NKP055html"
    "fig:NKP063html"
    "fig:NKP054pdf"
    "fig:NKP055pdf"
    "fig:NKP063pdf"
    "fig:HPl65"
    "sec:inne-przykady"
    "fig:RajDusznyS"
    "fig:RajDuszny"
    "sec:uwagi-kocowe"
    "sec:podzikowania"
    "sec:abstract"))
 :latex)

