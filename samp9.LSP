(defun C:samp9 (/ *error* dch)
  (setq mix "M20")
  (setq names '("M6" "M8" "M10" "M12" "M15" "M16" "M20" "M24" "M25" "M30"))
  
  
  (setq dcl_id (load_dialog "E:\\purvaja\\WDBM\\LISP\\QWIKDRAFT\\AUTOLISP\\Website\\Drafting\\Drawings - code\\samp9.DCL"))
		 
  (if (not (new_dialog "samp9" dcl_id)			;test for dialog
 
      );not
 
    (exit)						;exit if no dialog
 
  );if
  (setq w1 (dimx_tile "im")
	h1 (dimx_tile "im")
	)
  (set_tile "CB" "150")
  
  (start_image "im")
  (fill_image 0 0 w1 h1 5)
  (end_image)
  (start_list "selections")
  (mapcar 'add_list names)
  (end_list)
 
     (action_tile
    "cancel"						;if cancel button pressed
    "(done_dialog) (setq userclick nil)"		;close dialog, set flag
    );action_tile
 
  (action_tile
    "accept"
    "(done_dialog)(setq userclick T))"			;close dialog, set flag
  );action tile
 
  (start_dialog)					;start dialog
 
  (setq dch (unload_dialog dcl_id))				;unload
  (if userclick
    (progn

      (setq SIZ (fix SIZ))
      )
    )
 
(princ)
 
)
(princ)