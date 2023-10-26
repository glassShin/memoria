
function openpopup(pid, cnt,cid) {
	document.getElementById("positionset").style.display = "block";
	document.getElementById("optionUpdate").addEventListener(
		"click",
		function() {
			var iframeUrl = "OptionUpdate.jsp?pid=" + pid
				+ ",cnt=" + cnt+",cid=" + cid;

			document.getElementById("myFrame").src = iframeUrl;
		});
}

function popupclose(elementId) {
 		document.getElementById("positionset").style.display = "none";
 	}
