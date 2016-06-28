;; Emphasis parensis
(show-paren-mode 1)

;; Do not make backup
(setq backup-inhibited t)
(setq make-backup-files nil)

;; Delete auto save files when exit
(setq delete-auto-save-files t)

;; Do not blink cursor
(blink-cursor-mode 0)

;; Show current line number on status bar
(column-number-mode t)

;;; Edit compressed file
(auto-compression-mode t)

;;; mark region
(transient-mark-mode 1)

;;; Hide startup message
(setq inhibit-startup-message t) 

;(setq-default indent-tabs-mode nil)

;;; Show directory name if there is the same file name on buffer
(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'post-forward-angle-brackets))

(ffap-bindings)

(setq line-move-visual nil)

(setq view-read-only t)

; show line number
(global-linum-mode t)

(when window-system
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode nil)
  (setq default-frame-alist
	(append(list
		'(foreground-color . "black")
		'(background-color . "#f5f5d7")
		'(border-color . "black")
		'(mouse-color . "black")
		'(cursor-color . "pink")
					;'(width . 60)
					;'(height . 42))
		)
	       default-frame-alist)))
