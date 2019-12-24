
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'reftex-mode)

(require 'org-download)

(add-to-list 'auto-mode-alist '("\\.dat\\'" . org-mode))

;;for Chinese Characters
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                              "xelatex -interaction nonstopmode %f"))
;;(setq org-latex-pdf-process '("xelatex -interaction nonstopmode --synctex=1 %f"
  ;;                            "xelatex -interaction nonstopmode --synctex=1 %f"))

;;(add-hook 'org-mode-hook (lambda () (setq ispell-parser 'tex)))

(provide 'init-org)
