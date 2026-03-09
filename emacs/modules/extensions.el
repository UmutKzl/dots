(provide 'extensions)

(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)


(use-package magit)

(use-package gruvbox-theme
  :ensure t
  :init
  (load-theme 'gruvbox-dark-soft t))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package ivy
  :ensure t
  :diminish
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d "))

(use-package counsel
  :ensure t
  :after ivy
  :config
  (counsel-mode 1))

(use-package swiper
  :ensure t
  :after ivy
  :bind (("C-s" . swiper)))

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (python-mode . lsp)
         (rust-mode . lsp)
         (js-mode . lsp)
         (c-mode . lsp))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
