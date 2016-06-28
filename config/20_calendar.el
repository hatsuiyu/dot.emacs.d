(use-package japanese-holidays :ensure t)
(use-package calendar
  :ensure t
  :config
  (setq calendar-mark-holidays-flag t)
  (setq calendar-holidays (append japanese-holidays))
  (setq calendar-weekend-marker 'diary)
  (add-hook 'today-visible-calendar-hook 'calendar-mark-weekend)
  (add-hook 'today-invisible-calendar-hook 'calendar-mark-weekend))
