(doom! :input

       :completion
       ;;company                          ;; Text completion framework
       vertico                           ;; "

       :ui
       doom
       doom-dashboard
       doom-quit
       hl-todo
       minimap
       modeline
       ophints
       (popup +defaults)
       treemacs
       (vc-gutter +pretty)
       vi-tilde-fringe
       window-select
       workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       snippets

       :emacs
       dired
       electric
       ibuffer
       undo
       vc

       :term
       eshell
       vterm

       :checkers
       syntax
       (spell +flyspell)
       grammar

       :tools
       docker
       editorconfig
       (eval +overlay)
       lookup
       lsp
       magit
       rgb
       ;;terraform
       ;;tmux
       ;;tree-sitter

       :os
       (:if IS-MAC macos)

       :lang
       ;;agda
       ;;beancount
       (cc +lsp)
       ;;clojure
       ;;common-lisp
       ;;coq
       ;;crystal
       ;;csharp
       ;;data
       ;;(dart +flutter)
       ;;dhall
       ;;elixir
       ;;elm
       emacs-lisp
       ;;erlang
       ;;ess
       ;;factor
       ;;faust
       ;;fortran
       ;;fsharp
       ;;fstar
       ;;gdscript
       (go +lsp)
       ;;(graphql +lsp)
       (haskell +lsp)
       ;;hy
       ;;idris
       ;;json
       (java +lsp)
       (javascript +lsp)
       ;;julia
       ;;kotlin
       ;;latex
       ;;lean
       ;;ledger
       ;;lua
       markdown
       ;;nim
       ;;nix
       ;;ocaml
       org
       ;;php
       ;;plantuml
       ;;purescript
       (python +lsp)
       ;;qt
       ;;racket
       ;;raku
       ;;rest
       ;;rst
       ;;(ruby +rails)
       (rust +lsp)
       ;;scala
       ;;(scheme +guile)
       sh
       ;;sml
       ;;solidity
       ;;swift
       ;;terra
       ;;web
       yaml
       (zig +lsp)

       :email

       :app

       :config
       ;;literate
       (default +bindings +smartparens))
