;gnu clisp  2.49.60
(in-package :cl-user)

(defclass name ()
  ((first
    :initarg :first
    :accessor first-name)
   (last
    :initarg :last
    :accessor last-name)))

(defun make-name (&key first last)
  (make-instance 'name :first first :last last))

(defmethod full-name (name)
  (format NIL "~A ~A" (first-name name) (last-name name)))

(defvar me (make-name :first "Waqqas" :last "Sheikh"))
(format t "Hello, ~A!" (full-name me))
