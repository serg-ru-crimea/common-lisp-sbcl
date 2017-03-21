; 1-1
	(car (cdr (cdr task-1-1)))
	(caddr task-1-1)
	(third task-1-1)
	(nth 2 task-1-1)
	
; 1-2
	(car (cdr (car (cdr task-1-2))))
	(cadadr task-1-2) 
	(second (second task-1-2))
	(nth 1 (nth 1 task-1-2))
	
; 1-3
	(car (cdr (cdr (car (cdr (car (cdr (car task-1-3))))))))
	(caddar (cdadar task-1-3))		; 4 max rule
	
; 2 
	(car (last task-2))

; 4
   (defun list-n (n)
      (let ((l-out ))
         (dotimes (i n l-out)
            (setf l-out (append l-out (list (+ i 1)))))))
            
; 5
   (defun list-inc (lst)
      (let ((l-out))
         (dolist (obj lst l-out)
            (setf l-out (append l-out (list (+ obj 1)))))))
            
   (defun list-inc-void (lst)
      (if (car lst)
         (progn 
            (setf (car lst) (+ 1 (car lst)))
            (list-inc-void (cdr lst)))))

(mapcar #'(lambda (x) (+ x 10)) '(1 2 3 4 5 6 7 8 9))
