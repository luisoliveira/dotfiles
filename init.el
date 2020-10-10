(package-initialize)

(require 'org)

(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org")) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("24714e2cb4a9d6ec1335de295966906474fdb668429549416ed8636196cb1441" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" default))
 '(package-selected-packages
   '(smart-tabs-mode rainbow-delimiters markdown-mode+ markdown-mode magit flycheck-irony ess elpy company-quickhelp company-irony company-c-headers company-auctex company color-theme-sanityinc-solarized org-bullets exotica-theme dracula-theme solarized-theme cycle-themes ido-grid-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
