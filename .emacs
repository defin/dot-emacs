;;; Rest of init is in ~/.emacs.d/_emacs.org

(package-initialize)

(setq dotfiles-dir (expand-file-name "~/.emacs.d/"))

;; load up all literate org-mode files in this directory
(mapc #'org-babel-load-file (sort (directory-files dotfiles-dir t "\\.org$") 'string<))
