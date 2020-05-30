
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'reftex-mode)

(require 'org-download)

(require 'org-ref)

(add-to-list 'auto-mode-alist '("\\.dat\\'" . org-mode))

;;for Chinese Characters
(setq org-latex-pdf-process
      '("latexmk -pdflatex='xelatex -interaction nonstopmode' -pdf -bibtex -f %f"))
;; (setq org-latex-pdf-process '("xelatex -interaction  nonstopmode %f"
;;                               "xelatex -interaction  nonstopmode %f"))
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

;;org-ref
(setq reftex-default-bibliography '("~/Documents/References/bibliography/liuhuref.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "~/Documents/References/bibliography/notes.org"
      org-ref-default-bibliography '("~/Documents/References/bibliography/liuhuref.bib")
      org-ref-pdf-directory "~/Documents/References/bibliography/bibtex-pdfs/")
;;helm-bibtex for org-ref
(setq bibtex-completion-bibliography "~/Documents/References/bibliography/liuhuref.bib"
      bibtex-completion-library-path "~/Documents/References/bibliography/bibtex-pdfs"
      bibtex-completion-notes-path "~/Documents/Reference/bibliography/helm-bibtex-notes")
(provide 'init-org)

