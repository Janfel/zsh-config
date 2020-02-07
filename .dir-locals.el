;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((fundamental-mode
  (eval let ((auto-mode-alist '(("\\.zsh_\\'" . sh-mode)
                                ("\\.ztxt\\'" . sh-mode))))
        (set-auto-mode))))
