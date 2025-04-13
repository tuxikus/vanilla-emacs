;; disable useless ui elements
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (menu-bar-mode -1)
      (scroll-bar-mode -1)))

;; mode line
(setq-default mode-line-format
              (list
               '(:eval (propertize (format " %s " (buffer-name))
                                   'face '(:weight bold)))
               '(:eval (propertize (format " %s " "|")
                                   'face '(:weight bold)))
               '(:eval (propertize (format " %s " major-mode)
                                   'face '(:weight bold)))))

;; move mode line to top
(setq-default header-line-format mode-line-format)
(setq-default mode-line-format nil)

;; disable bell
(setq ring-bell-function 'ignore)


;; dont create backup and lock files
(setq create-lockfiles nil
      make-backup-files nil)

;; dont auto save buffers
(auto-save-mode -1)

;; dont show start screen
(setq inhibit-startup-screen t
      inhibit-startup-message t)

;; line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; save location in buffer
(save-place-mode 1)

;; content of initial scratch buffer
(setq initial-scratch-message ";;; Emacs > Vi")

;; use y and n instead of yes and no
(fset 'yes-or-no-p 'y-or-n-p)

;; font
;; (add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font-15"))

;; use this code and eval-region to test a font
;; (set-frame-font "Iosevka Nerd Font-15" nil t)

;; which key
;; (which-key-mode 1)

;; enable pair completion
(electric-pair-mode)

;; ido - interactive do - configuration
(setq ido-enable-flex-matching t
      ido-everywhere t)
(ido-mode t)

;; icomplete configuration
(icomplete-mode)

;; keys
(global-set-key (kbd "C-c d") 'duplicate-line)
(global-set-key (kbd "C-c f f") 'find-file)
(global-set-key (kbd "C-c e r") 'eval-region)
(global-set-key (kbd "C-c e b") 'eval-buffer)
(global-set-key (kbd "C-c w m") 'whitespace-mode)
(global-set-key (kbd "C-x c") 'compile)
(global-set-key (kbd "C-S-a") 'beginning-of-buffer)
(global-set-key (kbd "C-S-e") 'end-of-buffer)
(global-set-key (kbd "M-z") 'zap-up-to-char)

;; hooks
(add-hook 'before-save-hook 'whitespace-cleanup)
