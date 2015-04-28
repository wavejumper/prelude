;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'super)

(disable-theme 'zenburn)
(setq prelude-theme 'solarized-dark)
(set-default-font "Inconsolata for Powerline 14")
(toggle-scroll-bar -1)
(global-linum-mode 1)
(setq tab-width 2)
(setq-default tab-width 2)
(setq whitespace-line-column 95)

(eval-after-load 'clojure-mode
                 '(font-lock-add-keywords
                   'clojure-mode `(("(\\(fn\\)[\[[:space:]]"
                                    (0 (progn (compose-region (match-beginning 1)
                                                              (match-end 1) "λ")
                                              nil))))))
(eval-after-load 'clojure-mode
                 '(font-lock-add-keywords
                   'clojure-mode `(("\\(#\\)("
                                    (0 (progn (compose-region (match-beginning 1)
                                                              (match-end 1) "ƒ")
                                              nil))))))

(eval-after-load 'clojure-mode
                 '(font-lock-add-keywords
                   'clojure-mode `(("\\(#\\){"
                                    (0 (progn (compose-region (match-beginning 1)
                                                              (match-end 1) "∈")
                                              nil))))))
