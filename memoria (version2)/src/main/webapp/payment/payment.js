    function findaddr() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extra").value = extraAddr;
                
                } else {
                    document.getElementById("extra").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detail").focus();
            }
        }).open();
    }
    
function validateForm() {
    var nameInput = document.querySelector('.u_line[name="name"]');
    var postcodeInput = document.querySelector('.u_code[name="postal_code"]');
    var addressInput = document.querySelector('.u_line[name="add"]');
    var detailAddressInput = document.querySelector('.u_detailaddr[id="detail"]');
    var phonenumInput = document.querySelector('.u_line[name="phonenum"]');
    var errmsg = document.getElementById("errmsg");
    
    // 입력 필드를 배열에 저장
    var inputFields = [nameInput, postcodeInput, addressInput, detailAddressInput, phonenumInput];
    
    // 모든 입력 필드의 테두리 스타일 초기화
    for (var i = 0; i < inputFields.length; i++) {
        inputFields[i].style.border = '';
    }
    
    var isValid = true;

    for (var i = 0; i < inputFields.length; i++) {
        if (inputFields[i].value === "") {
            inputFields[i].style.borderBottom = '1.5px solid red'; // 빨간색 테두리
            isValid = false;
        }
    }
	if (!isValid) {
        errmsg.innerText = "아래 항목을 모두 입력해주세요."; // errmsg p태그에 메시지 추가
    } else {
        errmsg.innerText = ""; // 유효성이 통과되면 errmsg 내용 비우기
    }

    return isValid;
}

      var IMP = window.IMP;
      IMP.init("imp78140140");
 
      function requestPay(total,title) {
        IMP.request_pay(
          {
            pg: "kcp.store-42477920-14c4-4f3f-a393-c20d45cd96f1",
            pay_method: "card",
            merchant_uid: "57008833-33004",		//주문번호
            name: title,
            amount: 100,
            buyer_email: "lwbkj8546@naver.com",
            buyer_name: "Memoria",
            buyer_tel: "010-9031-8546",
            buyer_addr: "인천광역시 부평구 무네미로 448번길 56",
            buyer_postcode: "123-456",
          },
          function (rsp) {
            // callback
            //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
            if(rsp.success) {
            console.log('결제성공');
            console.log(rsp);
            }else {
            console.log('결제실패');
            console.log(rsp);
            }
          }
        );
      }	
      
 function handlePayment(event) {
    if (validateForm()) {
        // 유효성 검사 통과 시 결제 처리 로직을 실행
        requestPay();
    } else {
        // 유효성 검사 실패 시 폼 제출을 막음
        event.preventDefault();
    }
}