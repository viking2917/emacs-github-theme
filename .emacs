;; put this in your .emacs file. it loads theme, and configures web-mode to look like github as well (see README for more).
(load "~/.emacs.d/github-theme.el")
(load "~/web-mode.el")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'magic-mode-alist 
    '("\\(?:<\\?xml\\s +[^>]*>\\)?\\s *<\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *<\\)*\\(?:!DOCTYPE\\s +[^>]*>\\s *<\\s *\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *\<\\)*\\)?[Hh][Tt][Mm][Ll]"
      . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode. Github colors"
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#22863a")
  (set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#6f42c1")
  (set-face-attribute 'web-mode-html-attr-value-face nil :foreground "#032f62")
  (set-face-attribute 'web-mode-keyword-face nil :foreground "#d73a49")
  (set-face-attribute 'web-mode-function-call-face nil :foreground "#005cc5")
    
  (set-face-attribute 'web-mode-css-selector-face nil :foreground "#22863a")
  (set-face-attribute 'web-mode-css-property-name-face nil :foreground "#005cc5")
  (set-face-attribute 'web-mode-css-string-face nil :foreground "#032f62")
  (set-face-attribute 'web-mode-css-comment-face nil :foreground "#6a737d")
  (set-face-attribute 'web-mode-css-priority-face nil :foreground "#d73a49")
  
  )

(add-hook 'web-mode-hook  'my-web-mode-hook)
