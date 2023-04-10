(defun C:samp8 ()					;define function	
 
  (setq mix  "M20")					;preset concrete mix
 
  (setq NAMES '("M6" "M8" "M10" "M12" "M15"
                "M16" "M20" "M24" "M25" "M30")		;define list
  );setq
 
  (setq dcl_id (load_dialog "E:\\purvaja\\WDBM\\LISP\\QWIKDRAFT\\AUTOLISP\\Website\\Drafting\\Drawings - code\\samp8.dcl"))		;load dialog
 
  (if (not (new_dialog "samp8" dcl_id)			;test for dialog
 
      );not
 
    (exit)						;exit if no dialog
 
  );if
 
  (setq w (dimx_tile "im")				;get image tile width
        h (dimy_tile "im")				;get image tile height
 
);setq
 
  (start_image "im")					;start the image
  (fill_image 0 0 w h 4)				;fill it with blue
  (end_image)						;end image
 
  (start_list "selections")				;start the list box
  (mapcar 'add_list NAMES)				;fill the list box
  (end_list)						;end list
 
  (set_tile "eb1" "230")					;put dat into edit box
  (mode_tile "eb1" 2)					;disable edit box
 
  
  (action_tile "eb1" 					;is user enters slot length
	 "(ebox_action $value $reason)")		;pass arguments to ebox_action

    (set_tile "eb2" "230")					;put dat into edit box
  (mode_tile "eb2" 2)					;disable edit box
 
  
  (action_tile "eb2" 					;is user enters slot length
	 "(ebox_action $value $reaso
	 n)")		;pass arguments to ebox_action
 
 
  (action_tile
    "cancel"						;if cancel button pressed
    "(done_dialog) (setq userclick nil)"		;close dialog, set flag
    );action_tile
 
  (action_tile
    "accept"						;if O.K. pressed
    (strcat						;string 'em together
      "(progn 
       (setq SIZ (atof (get_tile \"selections\")))"	;get list selection
      "(setq lngth (atof (get_tile \"eb1\")))"		;get slot length
      " (done_dialog)(setq userclick T))"		;close dialog, set flag
    );strcat

  );action tile
 
  (start_dialog)					;start dialog
 
  (unload_dialog dcl_id)				;unload
 
   (if userclick					;check O.K. was selected
    (progn
 
      (setq SIZ (fix SIZ))				;convert to integer
      (setq SIZ (nth SIZ NAMES))			;get the size
 
    );progn
 
  );if userclick
 
(princ)
 
);defun C:samp
 
(princ)