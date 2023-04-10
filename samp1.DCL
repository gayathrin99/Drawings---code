dcl_settings : default_dcl_settings
{
  audit_level = 3;
}
samp1 : dialog {
      label = "Structural Notes" ;
      : column {
      : edit_box {
      key = "CB"; 
      label = "&Column breadth(mm)";
      edit_width= 5;
      }
      : boxed_column {
      label : "&Concrete mix type";
      : popup_list {
      key ="selections";
      value = "5";
      }
      }
      }
 
     ok_cancel ;				//predifined OK/Cancel
     
     : row {
     
      : image {
      key = "im" ;
      height = 5.0;
      width = 5.0;
      }

     : paragraph {

     : text_part {
     label = "Designed and Created";
     }

     : text_part {
     label = "by Qwikdraft";
     }
     }
     					
     }
     }
     