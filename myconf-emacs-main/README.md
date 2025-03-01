above is old for windows

here is the new one config that i have on linux:

```
(setq show-paren-style 'expression)
(show-paren-mode 2)

(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

(add-to-list 'load-path "~/.emacs.d/plugins")

(setq inhibit-startup-screen t)
(load-theme 'adwaita' t)
(setq line-number-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-c"))
(global-unset-key (kbd "C-v"))
(global-unset-key (kbd "C-s"))
(global-unset-key (kbd "C-q"))
(global-unset-key (kbd "C-e"))
(global-unset-key (kbd "C-g"))
(global-unset-key (kbd "C-1"))

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-q") 'quit-window)
(global-set-key (kbd "C-e") 'dired)
(global-set-key (kbd "C-g") 'compile)
(global-set-key (kbd "C-1") 'shell-command)

```
