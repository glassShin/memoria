document.addEventListener('DOMContentLoaded', function() {
	var form = document.querySelector('form');

	form.addEventListener('submit', function(event) {
		var selectValue = form.querySelector('select[name="regrade"]').value;
		var titleValue = form.querySelector('textarea[name="retitle"]').value;
		var contentValue = form.querySelector('textarea[name="recontent"]').value;

		if (selectValue === "") {
			alert("평점을 선택해주세요.");
			event.preventDefault();
		} else if (titleValue === "") {
			alert("제목을 입력해주세요.");
			event.preventDefault();
		} else if (contentValue === "") {
			alert("후기 내용을 입력해주세요.");
			event.preventDefault();
		}
	});
});

function likeclick(reviewid, check) {

	$.ajax({
		type: 'POST',
		url: 'process/likeProcess.jsp',
		data: { reviewId: reviewid, heartchk: check },
		success: function(response) {
			var imgElement = $('.good-img[data-reviewid="' + reviewid + '"]');
			if(response.trim() === 'loginerr') {
				alert("로그인 후 이용해주세요.");
				window.location.href='../Login_Signup/Login_join.jsp';
			}
			$('.emotion' + reviewid).load(window.location.href + ' .emotion' + reviewid);
		},
		error: function() {
			alert('좋아요 처리 중 오류가 발생했습니다.');
		}
	});
}