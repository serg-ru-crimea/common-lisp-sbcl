#|
2. Определите функцию, 
возвращающую последни q элемент списка.
in: flat list
|#
(defun last-list (lst)
   (if (null (cdr lst))
       (car lst)
       (last-list (cdr lst))))

#| 
3. Определите функцию, 
заменяющую в исходном списке все вхождения 
заданного значения другим.
in: flat list
|#
(defun change-list (lst memb obj-replace)
   (dolist (obj lst)
      (if (eql obj memb)
               (setf obj obj-replace))))

#| 
4. Определите функцию, 
порождающую по заданному натуральному числу N 
список, состоящий из натуральных чисел от 1 до N.
|#
(defun list-n (n)
   (let ((l-out ))
      (dotimes (i n l-out)
         (setf l-out (append l-out (list (+ i 1)))))))

#| 
5. Определите функцию, 
которая увеличивает элементы исходного списка 
на единицу 
in: flat list of number
|#
(defun list-inc-void (lst)
   (if (consp lst)
      (progn
         (setf (car lst) (+ (car lst) 1))
         (list-inc-void (cdr lst))))

(defun list-inc (lst)
   (mapcar #'(lambda (x) (+ x 1)) lst))
#| 
7. Определите функцию, 
удаляющую из исходного списка элементы с четными
номерами.
|#
(defun list-odd (lst)
   (let((n 1) (l-out))
      ()))