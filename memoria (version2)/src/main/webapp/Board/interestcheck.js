function interestclick(check,pid) {
	$.ajax({
		type:'POST',
		url:'process/interestProcess.jsp',
		data : {interchk : check,pid : pid},
		success:function(response) {
			if(response.trim() === 'loginerr') {
				alert("로그인 후 이용해주세요.");
				window.location.href='../Login_Signup/Login_join.jsp';
			}else {
				     var newInterestAddr = response.trim() === 'true' ? '../image2/interestoff.png' : '../image2/intereston.png';
                
                // 기존의 클릭 이벤트 리스너를 제거합니다.
                $('.heart').off('click');

                // 하트 이미지의 소스를 업데이트합니다.
                $('.heart').attr('src', newInterestAddr);

                // 새로운 클릭 이벤트 리스너를 추가합니다.
                $('.heart').on('click', function () {
                    interestclick(response.trim(), pid);
                });
			}
		}
		
	})
}