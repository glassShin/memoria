
/*function openpopup(pid, cnt,cid) {
	document.getElementById("positionset").style.display = "block";
	document.getElementById("optionUpdate").addEventListener(
		"click",
		function() {
			var iframeUrl = "OptionUpdate.jsp?pid=" + pid
				+ ",cnt=" + cnt+",cid=" + cid;

			document.getElementById("myFrame").src = iframeUrl;
			console.log(pid,cnt,cid);
		});
}*/

function openpopup(pid, cnt, cid) {
    var xhr = new XMLHttpRequest();
    var url = "OptionUpdate.jsp?pid=" + pid + "&cnt=" + cnt + "&cid=" + cid;
    
    xhr.open("GET", url, true);

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById("myFrame").contentDocument.body.innerHTML = xhr.responseText;
            console.log(pid, cnt, cid);
        }
    };
    
    xhr.send();

    document.getElementById("positionset").style.display = "block";
}

function popupclose(elementId) {
 		document.getElementById("positionset").style.display = "none";
 	}
