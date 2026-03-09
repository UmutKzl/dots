(provide 'keys)

(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  (setq which-key-idle-delay 0.3))

(use-package general
  :ensure t
  :config
  (general-create-definer my/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :non-normal-prefix "C-SPC")

(my/leader-keys
  "f"  '(:ignore t :which-key "files")
  "ff" '(counsel-find-file :which-key "find file")
  "fr" '(recentf-open-files :which-key "recent files")
  "b"  '(:ignore t :which-key "buffers")
  "bb" '(switch-to-buffer :which-key "switch buffer")
  ))
