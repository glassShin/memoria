$(document).ready(function() {
	$('.customer-delete').on('click', function() {
		// 선택된 체크박스를 찾아서 처리
		var selectedProducts = [];
		$('input[name="customer-chk"]:checked').each(function() {
			selectedProducts.push($(this).closest('tr').find('.product-name').text());
		});
		console.log(selectedProducts);
		if (selectedProducts.length > 0) {
			// 선택된 상품을 서버로 보내 삭제 요청
			$.ajax({
				type: 'POST',
				url: 'deleteProduct.jsp', // 삭제를 처리할 서버 측 스크립트 경로로 변경
				data: { selectedProducts: selectedProducts },
				contentType: 'application/x-www-form-urlencoded',
				success: function(response) {
					if (response === 'success') {
						// 삭제가 성공하면 페이지 리로드 또는 필요한 작업 수행
						location.reload(); // 페이지 리로드 예시
					} else {
						alert('삭제 실패');
					}
				}
			});
		} else {
			alert('선택된 상품이 없습니다.');
		}
	});
});
