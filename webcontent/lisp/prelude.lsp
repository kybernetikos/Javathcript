; This file contains aliases and common definitions.
; It also imports the javascript Math functions.

(def + plus)
(def define def)
(def #t 't)
(def #f Nil)
(def nil Nil)
(def - minus)
(def / divide)
(def % rem)
(def * times)
(def = equal)
(def eq equal)
(def eq? equal)
(def head car)
(def first car)
(def tail cdr)
(def rest cdr)
(defun null (x) (equal x Nil))
(defun zerop (x) (equal x 0))
(defun plusp (x) (> x 0))
(defun minusp (x) (< x 0))
(defun evenp (x) (equal (rem x 2) 0))
(defun oddp (x) (/= (rem x 2) 1))
(defun list-member (E L) (cond ((null L) Nil) ((equal E (first L))  't) ('t (list-member E (rest L)))))
(defun map (F L) (if (null L) Nil (cons (F (head L)) (map F (tail L)))))

; Some stuff specific to being run in a browser.

(def document (js "document"))
(def body (js "document.body"))
(def window (js "window"))
(def getElement (method document "getElementById"))
(def alert (method window "alert"))
(def message alert)
(def confirm (method window "confirm"))

; To be more like emacs, you might want to uncomment these two lines
; (def setp set)
; (def set def)

; Import PI and the javascript math functions.

(def PI (get (js "Math") "PI"))
(let*
	(	(math (js "Math"))
		(import-math (lambda (funcname) 
							 (def-dyn funcname (method math funcname)))) )
	(map import-math '(sin cos tan asin acos atan floor max min log abs ceil pow exp atan2 random sqrt round))	)