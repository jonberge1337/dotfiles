(setq inhibit-startup-message t)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq visible-cursor nil) ; Para que no parpadee el cursor
(setq global-display-line-numbers 'relative) ; aparecen numeros relativos
(setq tramp-default-method "ssh") ; conexion ssh

(use-package evil
  :ensure t
  :init
  (evil-mode 1))

(use-package evil-nerd-commenter
  :ensure t
  :config
  (evilnc-default-hotkeys))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-terminal-cursor-changer
  :ensure t
  :config
  (unless (display-graphic-p)
          (require 'evil-terminal-cursor-changer)
          (evil-terminal-cursor-changer-activate) ; or (etcc-on)
          )
     (setq evil-motion-state-cursor 'box)  ; █
     (setq evil-visual-state-cursor 'box)  ; █
     (setq evil-normal-state-cursor 'box)  ; █
     (setq evil-insert-state-cursor 'bar)  ; ⎸
     (setq evil-emacs-state-cursor  'hbar) ; _
)

(setq electric-pair-pairs '(
							   (?\{ . ?\})
							   (?\( . ?\))
							   (?\[ . ?\])
							   (?\" . ?\")
							   (?\' . ?\')
							   ))
	(electric-pair-mode t)

(use-package doom-themes
    :ensure t
    :config
    (load-theme 'doom-gruvbox t))

(use-package editorconfig
  :ensure t
       :init
       (editorconfig-mode 1))

(use-package counsel
	  :ensure t
      :bind(
			 ("M-x" . counsel-M-x)
			 ("C-x C-f" . counsel-find-file))
	  )

(use-package flycheck
	  :ensure t
	  :init
	  (global-flycheck-mode t))

(use-package company
:ensure t
:config
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

(global-company-mode t)
)
