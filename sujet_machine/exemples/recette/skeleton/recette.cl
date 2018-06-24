
(defun array_init (len fun)
  (let ((out (make-array len)))
    (progn
      (loop for i from 0 to (- len 1) do
        (setf (aref out i) (funcall fun i)))
      out
    )))
(defvar last-char 0)
(defun next-char () (setq last-char (read-char *standard-input* nil)))
(next-char)
(defun mread-int ()
  (if (eq #\- last-char)
  (progn (next-char) (- 0 (mread-int)))
  (let ((out 0))
    (progn
      (loop while (and last-char (>= (char-code last-char) (char-code #\0)) (<= (char-code last-char) (char-code #\9))) do
        (progn
          (setq out (+ (* 10 out) (- (char-code last-char) (char-code #\0))))
          (next-char)
        )
      )
      out
    ))))
(defun mread-blank () (progn
  (loop while (or (eq last-char #\NewLine) (eq last-char #\Space) ) do (next-char))
))

(defun recette0 (n ordre desordre)
(progn
  #| Inserez votre code ici |#
))
(progn
  (let ((n (mread-int)))
    (mread-blank)
    (let
     ((ordre (array_init
                n
                (function (lambda (h)
                (block lambda_1
                  (let ((j (mread-int)))
                    (mread-blank)
                    (return-from lambda_1 j)
                  )))
                ))))
    (let
     ((desordre (array_init
                   n
                   (function (lambda (k)
                   (block lambda_2
                     (let ((l (mread-int)))
                       (mread-blank)
                       (return-from lambda_2 l)
                     )))
                   ))))
    (recette0 n ordre desordre))
    )
    )
    
)

