
function inputCheck(myForm){
	if (myForm.buttonClicked != "eintreten") return true;
	var name = myForm.userid.value;
	
	
	var fehlerMsg = "";
	
	var useridMsg = this.checkUserid(myUserid);
	var passwordMsg = this.checkPassword(myPassword);

	document.getElementById("useridErrorMsg").innerText = useridMsg;
	document.getElementById("passwordErrorMsg").innerText = passwordMsg;

	if (useridMsg){
		fehlerMsg += useridMsg + "\n";
	}
	

/*	if (fehlerMsg){
//		alert(fehlerMsg)
		return false;
	}else{
		return true;
	}
*/
	return (fehlerMsg)?false:true;
	
}
function checkUserid(userid){
	var myMsg = "";
	if (userid){
		myMsg = "";
	}else{
		myMsg = "Ihr Nickname darf nicht leer sein";
	}
	
	return myMsg;
}
