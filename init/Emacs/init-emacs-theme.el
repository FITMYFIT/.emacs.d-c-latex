;;; init-emacs-theme.el --- Init for Themes
;;; -*- coding: utf-8 -*-

;;; Commentary:



;;; Code:

;;; [ X Resources ]

(setq inhibit-x-resources t)

;; ;;; [ font lock ]

(global-font-lock-mode t)

;; (require 'color) ; for `color-lighten-name' and `color-darken-name'


;;; [ one-themes ] -- One color scheme.

;; (use-package one-themes
;;   :ensure t
;;   :no-require t
;;   :init (require 'one-themes)
;;   :config (load-theme 'one-dark t))

(use-package monokai-theme
  :ensure t
  :no-require t
  :init (require 'monokai-theme)
  :config (load-theme 'one-dark t))




(provide 'init-emacs-theme)

;;; init-emacs-theme.el ends here
