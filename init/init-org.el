
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'reftex-mode)

(require 'org-download)

(add-to-list 'auto-mode-alist '("\\.dat\\'" . org-mode))

;;for Chinese Characters
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                              "xelatex -interaction nonstopmode %f"))
;;(setq org-latex-pdf-process '("xelatex -interaction nonstopmode --synctex=1 %f"                            
;;"xelatex -interaction nonstopmode --synctex=1 %f"))

(setq org-image-actual-width '(300))

;;display images in org mode, from https://stackoverflow.com/questions/15407485/inline-pdf-images-in-org-mode

(add-to-list 'org-emphasis-alist
             '("*" (:foreground "red")               
               ))
(add-to-list 'org-emphasis-alist
             '("/" (:foreground "yellow")               
               ))
(provide 'init-org)

