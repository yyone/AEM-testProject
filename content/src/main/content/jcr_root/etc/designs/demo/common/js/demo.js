function move_campaign() {
  var url="other/campaign.html";
  window.location.href=url;
}

function set_query() {
  var url=$("#search-url").attr("value");
  window.location.href=url+"?q="+$("#search").val();
}

function getParam(query) {
  var url = location.href;
  var parameters = url.split("?");
  var params = parameters[1] ? parameters[1].split("&") : "";
  var paramsArray = [];
  for (i=0; i<params.length; i++) {
	var neet = params[i].split("=");
	paramsArray.push(neet[0]);
	paramsArray[neet[0]] = neet[1];
  }
  return paramsArray[query];
}

window.onload = function() {
  $("#query_value").text(decodeURI(getParam("q")));
}
