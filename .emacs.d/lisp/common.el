;;------------------------------------------------------------------------------
;; font: inconsolata
(set-face-attribute 'default nil
                    :family "Consolas"
                    :height 100
                    :weight 'normal
                    :width 'normal)

;;------------------------------------------------------------------------------
;; backups
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

;;------------------------------------------------------------------------------
;; remove scroll/menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(set-fringe-mode 0)

;;------------------------------------------------------------------------------
;; next/previous window
(defun move-to-previous-window ()
  (interactive)
  (select-window (previous-window)))

(defun move-to-next-window ()
  (interactive)
  (select-window (next-window)))

;;------------------------------------------------------------------------------
;; keybinds
(global-set-key (kbd "C-,") 'move-to-previous-window)
(global-set-key (kbd "C-.") 'move-to-next-window)
(global-set-key (kbd "C-z") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-z") (kbd "C-u 1 M-v"))

;;------------------------------------------------------------------------------
;; Ivy/Counsel/Swiper
(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  :bind
  (("C-x l" . ivy-switch-buffer)))

(use-package counsel
  :ensure t
  :config
  (counsel-mode 1))

(use-package swiper
  :ensure t
  :bind
  (("C-s" . swiper)))
