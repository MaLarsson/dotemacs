;;------------------------------------------------------------------------------
;; C++ mode
(setq-default c-basic-offset 4)

;;------------------------------------------------------------------------------
;; syntax highlighting
(use-package modern-cpp-font-lock
  :ensure t
  :hook
  (c++-mode . modern-c++-font-lock-mode))

;;------------------------------------------------------------------------------
;; clang-format
(use-package clang-format
  :ensure t
  :bind
  (("C-c f" . clang-format)))
