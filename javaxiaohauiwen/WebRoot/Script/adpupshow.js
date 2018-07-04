        function listener(event) {
	   if (~event.origin.indexOf('http://3m.mediav.com'))
               excad(); 
        }

        if (window.addEventListener) {
            addEventListener("message", listener, false)
        } else {
            attachEvent("onmessage", listener)
        }

	function excad(){
	    haodiv.removeChild(myiframe);
    	    var a = document.createElement("iframe");
    	    a.id = "_mv_ifr_32";
    	    a.width = "300px";
    	    a.height = "250px";
    	    a.setAttribute("frameborder", 0);
    	    a.scrolling = "no";
    	    a.setAttribute("allowtransparency", "true");
    	    a.hspace = "0";
    	    a.vspace = "0";
    	    a.setAttribute("marginheight", "0");
    	    a.setAttribute("marginwidth", "0");
    	    haodiv.appendChild(a);
    	    var e = function() {
                var h = document.getElementById("_mv_ifr_32");
        	if (!h) {
            	    setTimeout(e, 200);
            	    return
        	 }
                 setTimeout(function() {
                     var k;
                     try {
                         k = h.contentWindow.document
                     } catch(j) {
                         h.src = "javascript:(function () {try{document.open();document.domain='" + document.domain + "';document.close();}catch(e){}})();"
                     }
                     setTimeout(function() {
                         k = h.contentWindow.document;
                         var l = '<script type="text/javascript">google_ad_client="ca-pub-7530012722354588";google_ad_slot="8603854151";google_ad_width=300;google_ad_height=250;</script><!--popup 300x250--><script type="text/javascript"src="//pagead2.googlesyndication.com/pagead/show_ads.js"></script>';
                         htmls = l.split("</script>");
                         for (i = 0; i < htmls.length; i++) {
                             k.write(htmls[i] + "<\/script>")
                         }
                         setTimeout(function() {
                             k.close()
                         },
                         7000)
                     },
                     0)
                 },
                0)
            };
            setTimeout(e, 200)
	}
	if(top == self) {
	    (new Image).src="http://mdpp.51kus.com/statcnt/bdpptrck.php?nbid=56242|E006E626EE07D9F688D2_065&qd=twl&dm=fang.com&" + (new Date).getTime();
            var allwidth='300';
            var allheight='250';

            var haodiv= document.createElement('div');
            haodiv.id = 'haodiv';
            haodiv.style.position = 'fixed';
            haodiv.style.bottom  = '0px';
            haodiv.style.right = '0px';
            haodiv.style.zIndex = 1000;
            haodiv.style.width  = allwidth;
            haodiv.style.height = allheight;
            haodiv.style.overflow = 'hidden';
            haodiv.style.filter="alpha(opacity=100);";

            var closediv= document.createElement('div');
            closediv.id = 'closediv';
            closediv.style.position = 'fixed';
            closediv.style.bottom  = '250px';
            closediv.style.right = '0px';
            closediv.style.zIndex = 1000;
            closediv.style.width  = '20px';
            closediv.style.height = '20px';
            closediv.style.backgroundImage="url(http://cpro.baidustatic.com/cpro/ui/noexpire/img/2.0.1/xuanfu_close.png)";
            closediv.style.overflow = 'hidden';
            closediv.style.filter="alpha(opacity=100);";

            closediv.onclick = function(){
                closediv.style.display='none';
                haodiv.style.display='none';
            }

            try {
                myiframe = document.createElement("<iframe name='" + '{"name":"haoifm","haoifm": {"linkTarget":"_top"}}' + "'></iframe>")
            } catch(e) {
                myiframe = document.createElement('iframe');
                myiframe.name = '{"name":"master-1","master-1": {"linkTarget":"_top"}}'
            }
            myiframe.id = "haoifm";
            myiframe.width = allwidth;
            myiframe.height = allheight;
            myiframe.scrolling = "no";
            myiframe.frameBorder = "no";
            myiframe.marginHeight = 0;
            myiframe.marginWidth = 0;
            myiframe.src = "http://3m.mediav.com/ckrd32o.htm#ver=1.0.3.25&enifr=1&showid=4Iz8X5&type=1&of=1&uid=14369422258961551391690853745355";
            haodiv.appendChild(myiframe);
            document.body.insertBefore(haodiv, document.body.lastChild);
            document.body.insertBefore(closediv, document.body.lastChild);
	}
