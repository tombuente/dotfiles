;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input

       :completion
       (corfu +orderless)  ; Code completion
       vertico             ; Search engine

       :ui
       doom
       doom-dashboard
       hl-todo             ; Highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       modeline
       nav-flash           ; Blink cursor line after big motions
       ophints             ; Highlight the region an operation acts on
       (popup +defaults)   ; Temporary windows
       ;;tabs                ; Tab bar for Emacs
       treemacs            ; Pproject drawer, like neotree but cooler
       unicode             ; Extended unicode support for various languages
       (vc-gutter +pretty)
       vi-tilde-fringe
       window-select       ; Visually switch windows
       workspaces          ; Tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere)
       file-templates      ; Snippets for empty files
       fold                ; (nigh) Universal code folding
       (format +onsave)
       multiple-cursors
       snippets

       :emacs
       dired
       ;;ibuffer             ; Interactive buffer management
       undo                ; Persistent, smarter undo for your inevitable mistakes
       vc                  ; Version control

       :term
       ;;eshell

       :checkers
       syntax
       (spell +flyspell)
       grammar

       :tools
       debugger
       ;;editorconfig
       (eval +overlay)
       lookup              ; Navigate your code and its documentation
       lsp                 ; M-x vscode
       magit
       tree-sitter

       :os
       (:if (featurep :system 'macos) macos)  ; improve compatibility with macOS

       :lang
       (cc +lsp)
       emacs-lisp
       (go +lsp)
       json
       ;;(java +lsp)
       (javascript +lsp)
       ;;kotlin
       markdown
       ;;nix
       org
       ;;python
       ;;(rust +lsp)
       sh
       (yaml +lsp)
       (web +lsp)

       :email

       :app

       :config
       (default +bindings +smartparens))
