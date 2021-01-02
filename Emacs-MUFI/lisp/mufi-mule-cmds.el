;; mufi-mule-cmds.el Janusz S. Bień's modification of an extract from
;;; mule-cmds.el --- commands for multilingual environment 
(defun mufi-names ()
  "Return table of CHAR-NAME keys and CHAR-CODE values cached in `ucs-names'."
  (or nil
      (let ((ranges
	     '((#x0000 . #x33FF)
	       ;; (#x3400 . #x4DBF) CJK Ideographs Extension A
	       (#x4DC0 . #x4DFF)
	       ;; (#x4E00 . #x9FFF) CJK Unified Ideographs
	       (#xA000 . #xD7FF)
	       ;; (#xD800 . #xDFFF) Surrogate
	       (#xE000 . #xF8FF)
	       ;; (#xE000 . #xF8FF) Private Use Area
	       (#xFB00 . #x134FF)
	       ;; (#x13500 . #x143FF) unused
               (#x14400 . #x14646)
	       ;; (#x14647 . #x167FF) unused
	       (#x16800 . #x16F9F)
               (#x16FE0 . #x16FE0)
               ;; (#x17000 . #x187FF) Tangut Ideographs
               ;; (#x18800 . #x18AFF) Tangut Components
	       ;; (#x18B00 . #x1AFFF) unused
	       (#x1B000 . #x1B12F)
               ;; (#x1B130 . #x1B16F) unused
               (#x1B170 . #x1B2FF)
	       ;; (#x1B300 . #x1BBFF) unused
               (#x1BC00 . #x1BCAF)
	       ;; (#x1BCB0 . #x1CFFF) unused
	       (#x1D000 . #x1FFFF)
	       ;; (#x20000 . #xDFFFF) CJK Ideograph Extension A, B, etc, unused
	       (#xE0000 . #xE01FF)))
	    (gc-cons-threshold 10000000)
	    (names (make-hash-table :size 42943 :test #'equal)))
        (dolist (range ranges)
          (let ((c (car range))
	        (end (cdr range)))
	    (while (<= c end)
	      (let ((new-name (get-char-code-property c 'name))
		    (old-name (get-char-code-property c 'old-name)))
	        ;; In theory this code could end up pushing an "old-name" that
	        ;; shadows a "new-name" but in practice every time an
	        ;; `old-name' conflicts with a `new-name', the newer one has a
	        ;; higher code, so it gets pushed later!
	        (if new-name (puthash new-name c names))
	        (if old-name (puthash old-name c names))
	        (setq c (1+ c))))))
        ;; Special case for "BELL" which is apparently the only char which
        ;; doesn't have a new name and whose old-name is shadowed by a newer
        ;; char with that name.
        (puthash "BELL (BEL)" ?\a names)
        (setq ucs-names names))))
(mufi-names)
