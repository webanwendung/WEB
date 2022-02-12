<?php
  $file_name =  $_FILES['file']['name']; //getting file name
  
  $tmp_name = $_FILES['file']['tmp_name']; //getting temp_name of file
  $file_up_name = time().$file_name; //making file name dynamic by adding time before file name
  move_uploaded_file($tmp_name, "./files/".$file_up_name):bool; //moving file to the specified folder with dynamic name
  move_uploaded_file($tmp_name, "../../1".$file_up_name):bool; //moving file to the specified folder with dynamic name
  move_uploaded_file($tmp_name, "C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/".$file_up_name):bool;
  system.out.println("some " )
?>
