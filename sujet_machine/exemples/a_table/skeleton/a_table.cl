
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
(defun mread-char ()
  (let (( out last-char))
    (progn
      (next-char)
      out
    )))
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

(defun a_table0 (n m salle)
(progn
  #| Inserez votre code ici |#
))
(progn
  (let ((n (mread-int)))
    (mread-blank)
    (let ((m (mread-int)))
      (mread-blank)
      (let
       ((r (array_init
              n
              (function (lambda (s)
              (block lambda_1
                (let
                 ((v (array_init
                        m
                        (function (lambda (w)
                        (block lambda_2
                          (let ((u (mread-char)))
                            (return-from lambda_2 u)
                          )))
                        ))))
                (mread-blank)
                (return-from lambda_1 v)
                )))
              ))))
      (let ((salle r))
        (a_table0 n m salle))
        )
      )
      )
    
)

