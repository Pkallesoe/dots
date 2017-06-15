
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(menu-bar-mode -1)

(setq rm-blacklist ".*")

(display-battery-mode 1)

(display-time-mode 1)
(setq display-time-string-forms
       '((propertize (concat " " 24-hours ":" minutes " "))))

(setq browse-url-browser-function 'browse-url-xdg-open)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(use-package magit
  :ensure t)

(use-package evil
   :ensure t
   :bind ("C-<f1>" . evil-mode))

(use-package evil-leader
      :commands (evil-leader-mode)
      :ensure evil-leader
      :demand evil-leader
      :init
      (global-evil-leader-mode)
      :config
      (progn
        (evil-leader/set-leader ",")
        ;; bindings from earlier
        )
;; keyboard shortcuts
        (evil-leader/set-key
          "a" 'ag-project
          "A" 'ag
          "b" 'ido-switch-buffer
          "c" 'mc/mark-next-like-this
          "C" 'mc/mark-all-like-this
          "e" 'er/expand-region
          "E" 'mc/edit-lines
          "f" 'ido-find-file
          "g" 'magit-status
          "i" 'idomenu
          "j" 'ace-jump-mode
          "k" 'kill-buffer
          "K" 'kill-this-buffer
          "o" 'occur
          "p" 'magit-find-file-completing-read
          "r" 'recentf-ido-find-file
          "s" 'ag-project
          "t" 'ansi-term
          "T" 'eshell
          "w" 'save-buffer
          "x" 'smex
      )
)

(use-package evil-escape
   :config (evil-escape-mode t)
   :config(setq-default evil-escape-key-sequence "jk"))
(evil-mode 1)

;; Easy navigation between windows.
     (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
