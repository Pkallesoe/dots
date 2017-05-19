
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
