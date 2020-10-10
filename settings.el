(debug-on-entry 'package-initialize)
;(package-initialize)
(add-to-list 'package-archives
                     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
                     '("org" . "http://orgmode.org/elpa/"))


;;; set up package syncing to allow for syncing between different machines

;; list of packages to sync
(setq pfl-packages
        '(
            color-theme-sanityinc-solarized
	    counsel
            company
            company-auctex
            company-c-headers
            company-irony
            company-quickhelp
            elpy
            ess
            flycheck-irony
            irony
            magit
            markdown-mode
            markdown-mode+
            rainbow-delimiters
            smart-tabs-mode
            yasnippet
	    ido-grid-mode
	    cycle-themes
	    org-bullets
            ))

;; refresh package list if it is not already available
(when (not package-archive-contents) (package-refresh-contents))

;; install packages from the list that are not yet installed
(dolist (pkg pfl-packages)
    (when (and (not (package-installed-p pkg)) (assoc pkg package-archive-contents))
        (package-install pkg)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(toggle-frame-maximized)
(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(global-linum-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)
(display-time-mode 1)
(setq column-number-mode t)
(global-hl-line-mode 1)

(electric-pair-mode 1)
(show-paren-mode 1) 
(savehist-mode 1)
(global-auto-revert-mode 1)
(global-visual-line-mode 1)

(winner-mode 1)

(ido-mode 1)
(setq ido-everywhere t) 
(setq ido-enable-flex-maching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)
(setq ido-file-extension-order '(".org" ".txt" ".csv"))

(ido-grid-mode 1)

(setq cycle-themes-theme-list '(dracula solarized-light exotica))
(require 'cycle-themes)
(cycle-themes-mode)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda() (org-bullets-mode 1)))
(org-bullets-mode)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
;(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
;(global-set-key (kbd "C-y") 'counsel-yamk-pop)

(require 'magit)

(global-set-key (kbd "C-?") 'hippie-expand)
(global-set-key (kbd "M-D") 'backward-kill-word)
(global-set-key (kbd "DEL") 'backward-delete-char)
(global-set-key (kbd "C-z") 'replace-string)
(global-set-key (kbd "C-M-z") 'replace-regex)
(global-set-key (kbd "C-Z") 'count-matches)

(load-theme 'exotica t)
