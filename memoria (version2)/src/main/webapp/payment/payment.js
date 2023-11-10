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
    var addressInput = document.querySelector('.u_line[name="addr"]');
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
 
      function requestPay(total,title,mail) {
      var result = validateForm();
      if(!result) {
      return;
      }else {
      
       var currentDate = new Date();

      var year = currentDate.getFullYear();
      var month = currentDate.getMonth() + 1; // 월은 0부터 시작하므로 1을 더합니다.
      var day = currentDate.getDate();
      var hours = currentDate.getHours();
      var minutes = currentDate.getMinutes();
      var seconds = currentDate.getSeconds();

      var paynumber = mail+'_'+year + month+ day+ hours+ minutes + seconds;
         console.log(paynumber);
      var form = document.getElementById('deliveryInfo');
      
      var name = form.querySelector('input[name="name"]').value;
      var defaddress = form.querySelector('input[name="addr"]').value;
      var detailAddress = form.querySelector('input[name="detail"]').value;
      var phoneNumber = form.querySelector('input[name="phonenum"]').value;
      
      var addr = defaddress + ' ' + detailAddress;
            
        IMP.request_pay(
          {
            pg: "kcp.store-42477920-14c4-4f3f-a393-c20d45cd96f1",
            pay_method: "card",
            merchant_uid: paynumber,      //주문번호
            name: title,
            amount: total,
            buyer_email: mail,
            buyer_name: name,
            buyer_tel: phoneNumber,
            buyer_addr: addr,
            buyer_postcode: "123-456",
          },
          function (rsp) {
            if (rsp.success) {
      // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
      // jQuery로 HTTP 요청
      jQuery.ajax({
        url: "process/PaymentProcess.jsp", 
        method: "POST",
        data: {
          imp_uid: rsp.imp_uid,            // 결제 고유번호
          merchant_uid: rsp.merchant_uid,   // 주문번호
          bname : rsp.buyer_name,
          baddr : rsp.buyer_addr,
          pname : rsp.name,
          price : rsp.paid_amount,
          phone : rsp.buyer_tel
        }
      }).done(function (data) {
        alert("결제에 성공했습니다.");
        location.href='PaymentCompleted.jsp';
      })
    } else {
      alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
    }
  });
  }
      }