(require 'package)
(package-initialize)
;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package auto-install
 :ensure t
 :config
 (auto-install-compatibility-setup))

(push (expand-file-name "config" user-emacs-directory) load-path)

(load "00_default")
(load "00_display")
(load "00_keybind")
(load "10_elscreen")
(load "20_calendar")
(load "20_yaml")
