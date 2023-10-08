function sendCode(){
	
	var action = document.forms["find_pass"]["action"].value;
	var phoneNumber = document.forms["find_pass"]["phonenum"].value;
	var mail = document.forms["find_pass"]["mail"].value;
	
	saveData();
	window.location.href = '../process/CodeSendProcess.jsp?mail='+mail+'&phonenum='+phoneNumber+'&action='+action;
}

function saveData(){
	const formData = {
		mail: document.forms["find_pass"].mail.value,
        phonenum: document.forms["find_pass"].phonenum.value,
        // Add more fields as needed
    };

	sessionStorage.setItem('formFindPass', JSON.stringify(formData));
}        


function checkCode(){
	var inputCode = document.forms["find_pass"]["checkPhoneCode"].value;
	var sendedCode = document.forms["find_pass"]["code"].value;
	var codeError = document.getElementById("check_err");
	
	if(sendedCode==""){
		codeError.style.color="red";
		codeError.innerHTML = "input the code.";
		return false;
	}
	if(inputCode!=sendedCode) {
		codeError.style.color="red";
		codeError.innerHTML = "wrong.";
		return false;
       	}
	if(inputCode==sendedCode){
		codeError.style.color="green";
		codeError.innerHTML = "확인.";
		return false;
		}

}

function validateForm(){
	var check = true;
	
	var email = document.forms["find_pass"]["mail"].value;
	var emailError = document.getElementById("mail_err");
	emailError.style.color="red";
	if (email == "") {
    emailError.innerHTML = "이메일은 반드시 작성해야 합니다.";
    check= false;
    }
    
    var phoneNumber = document.forms["find_pass"]["phonenum"].value;
    var numberError = document.getElementById("num_err");
    numberError.style.color="red";
    if (phoneNumber == "") {
    numberError.innerHTML = "휴대폰 번호는 반드시 입력해야 합니다.";
    
    check= false;
    }
    if(!checkCode()) check= false;
    
    return check;
       
}
