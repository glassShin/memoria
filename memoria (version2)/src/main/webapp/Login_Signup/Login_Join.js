        
function checkpass() {
	var pass = document.getElementById("pass");
	var c_pass = document.getElementById("check_pass");
	var check = document.getElementById("pass_success");
	check.innerHTML = "";
	if(c_pass.value==""){
		check.style.color="red";
		check.innerHTML = "비밀번호 확인 하세요.";
		return false;
	}
	if(pass.value!=c_pass.value) {
		check.style.color="red";
		check.innerHTML = "새 비밀번호가 일치하지 않습니다.";
		return false;
       	}
	if(pass.value==c_pass.value){
		check.style.color="green";
		check.innerHTML = "비밀번호가 일치합니다.";
		}
}
        

//send the code to valid number
function sendCode(){
	
	var action = document.forms["joinFrm"]["action"].value;
	var phoneNumber = document.forms["joinFrm"]["phonenum"].value;
	
	saveData();
	window.location.href = './process/CodeSendProcess.jsp?phonenum='+phoneNumber+'&action='+action;
}
      
function saveData(){
	const formData = {
		mail: document.forms["joinFrm"].mail.value,
        pass: document.forms["joinFrm"].pass.value,
        name: document.forms["joinFrm"].name.value,
        phonenum: document.forms["joinFrm"].phonenum.value,
        birth: document.forms["joinFrm"].birth.value,
        gender: document.querySelector('input[name="gender"]:checked') ? document.querySelector('input[name="gender"]:checked').value : '',
		
        // Add more fields as needed
    };

	sessionStorage.setItem('formData', JSON.stringify(formData));
}        
        
function validEmail(){

	var email = document.forms["joinFrm"]["mail"].value;
	var emailError = document.getElementById("mail_err");
	emailError.style.color="red";
  	if (email == "") {
    emailError.innerHTML = "이메일은 반드시 작성해야 합니다.";
    return false;
    } else if (!/^\S+@\S+\.\S+$/.test(email)) {
    emailError.innerHTML = "이메일이 유효한 형식이 아닙니다.";
    return false;
  } else {
    emailError.innerHTML = "";
  }
}

function validPass(){
	var password = document.getElementById("pass").value;

	var passwordError = document.getElementById("pass_err");
	var check = document.getElementById("pass_success");
	passwordError.style.color="red";
	if (password == "") {
    passwordError.innerHTML = "비밀번호는 반드시 작성해야 합니다.";
    return false;
  } else if (password.length < 8 || password.length > 20) {
    passwordError.innerHTML = "비밀번호는 8글자 이상 20글자 이하로 작성해야합니다.";
    return false;
  } else if (!/^(?=.*[a-z])(?=.*\d)[a-zA-Z\d]{8,}$/.test(password)) {
    passwordError.innerHTML = "비밀번호는 최소 하나의 소문자, 하나의 숫자를 포함해야 합니다.";
    return false;
  } else {
    passwordError.innerHTML = "";
  }
  	check.innerHTML = "";	
}

function validName(){
	var name = document.forms["joinFrm"]["name"].value;
	var nameError = document.getElementById("name_err");
	var koreanchk = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	console.log(name);
	nameError.style.color="red";
	if (name == "") {
    nameError.innerHTML = "이름(닉네임)은 반드시 작성하여야 합니다.";
    return false;
  } else if (!/^[a-zA-Z]+$/.test(name) && !koreanchk.test(name)) {
    nameError.innerHTML = "이름(닉네임)은 문자만 포함할 수있습니다.";
    return false;
  } else {
    nameError.innerHTML = "";
  }
}

function validPhone(){
	var phoneNumber = document.forms["joinFrm"]["phonenum"].value;
	var numberError = document.getElementById("num_err");
	numberError.style.color="red";
	if (phoneNumber == "") {
    numberError.innerHTML = "휴대폰 번호는 반드시 입력해야 합니다.";
    return false;
  } else if (!/^\d{11}$/.test(phoneNumber)) {
    numberError.innerHTML = "휴대폰은 유효한 형식이여야 합니다.";
    return false;
  } else {
    numberError.innerHTML = "";
  }
}


//코드 확인 check
function checkCode(){
	var inputCode = document.forms["joinFrm"]["checkPhoneCode"].value;
	var sendedCode = document.forms["joinFrm"]["code"].value;
	var codeError = document.getElementById("check_err");
	if(sendedCode==""){
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
		return true;
		}

}

function postJoinProcess(){

	var isValid = true;
	var birth = document.forms['joinFrm'].birth.value;
	var birthError = document.getElementById("birth_err");
	// Get the gender radio inputs by name
    var genderInputs = document.forms["joinFrm"]["gender"];
    var selectedGender = false;
	var genderError = document.getElementById("gender_err");
	
	birthError.style.color="red";
	genderError.style.color="red";
	
	
	if(!validEmail()){
		isValid = false;
	}
	
	if(!validPass()){
		isValid = false;
	}
	
	if(!checkpass()){
		isValid = false;
	}
	
	
	if(!validName()){
		isValid = false;
	}
	
	if(!validPhone()){
		isValid = false;
	}
	
	if(!checkCode()){
		isValid = false
	}
	
	
    // Loop through the radio inputs to find the selected one
    for (var i = 0; i < genderInputs.length; i++) {
        if (genderInputs[i].checked) {
            selectedGender = true;
            break;
        }
    }
    
  // Check if birth  is valid
  if (birth === "") {
    birthError.innerHTML = "생년월일을 입력하세요.";
    isValid = false;
	} else {
	var birthYear = new Date(birth).getFullYear();
    var currentYear = new Date().getFullYear();
    
    if (birthYear < 1940 || birthYear > currentYear) {
       birthError.innerHTML = "생년월일은 1940년부터 현재까지의 날짜여야 합니다.";
        isValid = false;
    } else {
        birthError.innerHTML = "";
        // Birthdate is valid within the specified range
    }
} 
  
  // Check gender
  for (var i = 0; i < genderInputs.length; i++) {
    if (genderInputs[i].checked) {
        selectedGender = true;
        break;
    }
}

	if (!selectedGender) {
    	genderError.innerHTML = "성별을 선택하세요.";
    	isValid = false;
	} else {
   		genderError.innerHTML = "";
	}

  return isValid;
}
