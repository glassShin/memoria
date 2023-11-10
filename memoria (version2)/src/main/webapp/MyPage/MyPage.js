function validEmail(){

	var email = document.forms["update"]["mail"].value;
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
    return true;
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
    return true;
  }
  	check.innerHTML = "";	
}

function validName(){
	var name = document.forms["update"]["name"].value;
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
    return true;
  }
}

function validPhone(){
	var phoneNumber = document.forms["update"]["phonenum"].value;
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
    return true;
  }
}

function postJoinProcess(){

	var isValid = true;
	var birth = document.forms['update'].birth.value;
	var birthError = document.getElementById("birth_err");
	// Get the gender radio inputs by name	
	birthError.style.color="red";
	
	console.log(isValid);
	if(!validEmail()){
		isValid = false;
		console.log("email"+isValid);
	}
	
	if(!validPass()){
		isValid = false;
		console.log("pass"+isValid);
	}
	
	if(!validName()){
		isValid = false;
		console.log("name"+isValid);
	}
	
	if(!validPhone()){
		isValid = false;
		console.log("phone"+isValid);
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
  return isValid;
}