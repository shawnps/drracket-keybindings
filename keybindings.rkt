#lang s-exp framework/keybinding-lang

(define (rebind key command)
  (keybinding
   key
   (λ (ed evt)
     (send (send ed get-keymap) call-function command ed evt #t))))

(rebind "alt:backspace" "backward-kill-word")
(rebind "alt:left" "backward-word")
(rebind "alt:right" "forward-word")