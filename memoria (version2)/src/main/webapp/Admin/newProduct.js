function open_modal(id, ename, kname, price) {
	
	// 모달에 해당 행의 정보를 채워넣는 코드
	$('.md-id').val(id);
	$('.md-product').val(id);
	$('.md-eng').val(ename);
	$('.md-kr').val(kname);
	$('.md-price').val(price);
}

function updateProduct(type) {
	var id = $('.md-id').val();
	var value = null;
	var col = null;
	if (type == 'id') {
		value = $('.md-product').val();
		col = 'productid';
	} else if (type == 'ename') {
		value = $('.md-eng').val();
		col = 'productename';
	} else if (type == 'kname') {
		value = $('.md-kr').val();
		col = 'productkname';
	} else if (type == 'price') {
		value = $('.md-price').val();
		col = 'productprice';
	} else if (type == 'stock') {
		value = $('.md-stock').val();
		col = 'productstock'
	}

	$.ajax({
		type: 'POST',
		url: 'updateProduct.jsp',
		data: { productid: id, type: col, val: value },
		success: function(response) {
			if (response.trim() === 'success') {
				alert('수정 성공');
			} else {
				alert('수정 실패')
			}
		}
	})
}