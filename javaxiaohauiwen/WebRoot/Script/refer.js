/*ͬhttp://js.soufunimg.com/ggcp/passport/js/CheckLoginDate.js*/
document.pscookies = new Object();
document.pscookies.get =
	function(name) {
	    return document.pscookies[name];
	}
document.pscookies.reload =
	function() {
	    var cookies = document.cookie;
	    if (cookies != null && cookies != '') {
	        var cookie;
	        cookies = cookies.split('; ');
	        for (var i = 0; i < cookies.length; i++) {
	            if (cookies[i].indexOf('=') > 0) {
	                cookie = cookies[i].split('=');
	                document.pscookies[cookie[0]] = cookie[1];
	            }
	        }
	    }
	}
document.pscookies.reload();
document.write("<div id='sfPassportDiv' style='display:none'></div>");
var sflogin = function() {
    var new_loginid = document.pscookies.get("new_loginid");
    var new_loginname = document.pscookies.get("new_loginname");
    var new_logindate_str = document.pscookies.get("new_logindate");
    this.reg = function() {
        try {
            if (new_loginid != undefined && new_loginname != undefined) {
                var thisTime = new Date();
                if (new_logindate_str != undefined) {
                    var passport_arys = new Array();
                    if (new_logindate_str.indexOf(" ") > 0) {
                        new_logindate_str = new_logindate_str.replace(" ", "-");
                    }
                    passport_arys = new_logindate_str.split('-');
                    var new_logindate = new Date(passport_arys[0], passport_arys[1]-1, passport_arys[2]);
                    if (new_logindate > thisTime) {
                        return;
                    }
                }
                var remoteURL = " http://js.passport.soufun.com/interface_user_pagelogin.aspx";
                document.getElementById("sfPassportDiv").innerHTML = "<img src='" + remoteURL + "'>";
            }
        }
        catch (e) { }
    }
}
ss = new sflogin();
ss.reg();