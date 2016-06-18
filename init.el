;;; Rest of init is in ~/.emacs.d/_emacs.org

(setq
 tramp-password-prompt-regexp
 (concat
  "^.*"
  (regexp-opt
   '("passcode" "Passcode"
     "password" "Password") t)
  ".*:\0? *"))

(setq tramp-default-method "sshx")

(setq tramp-verbose 9)


(package-initialize)

(setq dotfiles-dir (expand-file-name "~/.emacs.d/"))

;; load up all literate org-mode files in this directory
(mapc #'org-babel-load-file (sort (directory-files dotfiles-dir t "\\.org$") 'string<))
