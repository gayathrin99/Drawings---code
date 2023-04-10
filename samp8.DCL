samp8 : dialog {				//dialog name
      label = "Structural Holes" ;		//give it a label
 
       : row {					//define row
 
        : boxed_column {			//define boxed column
        label = "&Concrete mix type";			//give it a label
 
     	: popup_list {				//define popup list
        key = "selections";			//give it a name
        value = "5" ;				//initial value
        }					//end list
 
       }					//end boxed column
 
       }					//end row
 
       : edit_box {				//define edit box
         key = "eb1" ;				//give it a name
         label = "Column &Breadth (mm)" ;	//give it a label
         edit_width = 5 ;			//6 characters only
        }					//end edit box
 
        : edit_box {				//define edit box
         key = "eb2" ;				//give it a name
         label = "Column &Width (mm)" ;			//give it a label
         edit_width = 5 ;			//30 characters
        }					//end edit box
 
     ok_cancel ;				//predifined OK/Cancel
 
     : row {					//define row
 
     : image {					//define image tile
     key = "im" ;				//give it a name
     height = 5.0 ;				//and a height
     width = 5.0 ;				//and now a width
     }						//end image
 
     : paragraph {				//define paragraph
 
     : text_part {				//define text
     label = "Designed and Created";		//give it some text
     }						//end text
 
     : text_part {				//define more text
     label = "by Qwikdraft";			//some more text
     }						//end text
 
     }						//end paragraph
 
     }						//end row
					
     }						//end dialog