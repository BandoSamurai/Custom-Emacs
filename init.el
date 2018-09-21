;;+
;; Bando Samurai - Custom Emacs Config
;; Last update: 09-21-2018
;;-

;; El-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))
;; End of El-get

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#fafafa" "#183691" "#888a88" "#539100" "#888a88" "#888a88" "#183691" "#888a88"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (clues)))
 '(custom-safe-themes
   (quote
    ("d5aec3a39364bc4c6c13f472b2d0cdaebd5cff7a6e4839749be2156fcc075006" "f11e219c9d043cbd5f4b2e01713c2c24a948a98bed48828dc670bd64ae771aa1" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" default)))
 '(fci-rule-color "#888a88")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(nrepl-message-colors
   (quote
    ("#183691" "#888a88" "#539100" "#888a88" "#0086b3" "#183691" "#539100" "#888a88")))
 '(package-selected-packages
   (quote
    (py-autopep8 py-yapf pygen sexy-monochrome-theme slack virtualenvwrapper virtualenv xah-lookup windresize vlf csv-mode tango-2-theme restart-emacs magit jdee jedi flymake-lua flymake-json flycheck-pyflakes flycheck cyberpunk-theme clues-theme chyla-theme cheatsheet bongo bash-completion aws-snippets aws-ec2 all-the-icons yasnippet ztree w3 sed-mode python pyenv-mode json-mode elpy)))
 '(pdf-view-midnight-colors (quote ("#888a88" . "#edf5dc")))
 '(user-emacs-directory-warning nil)
 '(vc-annotate-background "#d5dec4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#888a88")
     (40 . "#183691")
     (60 . "#888a88")
     (80 . "#888a88")
     (100 . "#888a88")
     (120 . "#539100")
     (140 . "#888a88")
     (160 . "#888a88")
     (180 . "#888a88")
     (200 . "#888a88")
     (220 . "#63a35c")
     (240 . "#0086b3")
     (260 . "#183691")
     (280 . "#888a88")
     (300 . "#0086b3")
     (320 . "#888a88")
     (340 . "#539100")
     (360 . "#888a88"))))
 '(vc-annotate-very-old-color "#888a88"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal)))))

;; load neo tree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(defvar myPackages
  '(better-defaults
    elpy ;; add the elpy package
    material-theme))

(elpy-enable)

(require 'all-the-icons)
