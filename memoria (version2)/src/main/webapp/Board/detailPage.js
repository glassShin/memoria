function clicklike(reviewid) {
	jQuery.ajax({
		url : "process/LikeProcess.jsp",
		method : "POST",
		data : {
			
		}
		
	})
	console.log(reviewid);
}