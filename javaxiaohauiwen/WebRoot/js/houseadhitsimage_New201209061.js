/**
* jquery.houseadhitsimage - Create House Ad Hits Image
* Written by Shizir 
* Licensed under the SFun (http://www.soufun.com).
* Date: 2011/8/24
*
* @author Shizir
* @version 1.0
*
**/

var HouseAdHitsImage = function () {
    var imagenServer = "http://click5n.soufun.com/";
    var imagesServer = "http://click5.soufun.com/";
    this.create = function (agentid, houseid, city, isnorth,housetype) {
        var c = this.queryString("c");
        if (c != undefined && c !== null && c != "") {
            //agentad_{agentid}_{houseid}_{city}_{租售类型}_{来源}.gif
            var gd = c.split(',');
            if (gd[0] != undefined) {
                var imageServer = this.getUrl(isnorth, gd[0]);
                if (gd[0] == "1") {
                    var data = "houseid=" + houseid;
                    var url = "/newsecond/include/Hits/Details.aspx";
                    Xml.Request(url, data, function () { });
                }
                var hitsimage = "agentad_" + agentid + "_" + houseid + "_" + city + "_" + housetype + "_" + c + ".gif";
                document.write("<img height=0 width=0 src='" + imageServer + hitsimage + "' />");
            }
        }
    };
    this.getUrl = function (isnorth, type) {
        var imageServer = imagenServer;
        if (isnorth == "Y" || isnorth == "y") {
            if (type == "10" || type == "11") {
                imageServer = "http://clickshare.esf.soufun.com/share_";
            }
            else {
                if (type == "10" || type == "11") {
                    imageServer = "http://clickshare.esf.soufun.com/share_";
                } else {
                    imageServer = imagenServer;
                }
            }
        }
        else {
            imageServer = imagesServer;
        }
        return imageServer;
    };
    this.queryString = function (fieldName) {
        var urlString = document.location.search;
        if (urlString != null) {
            var typeQu = fieldName + "=";
            var urlEnd = urlString.indexOf(typeQu);
            if (urlEnd != -1) {
                var paramsUrl = urlString.substring(urlEnd + typeQu.length);
                var isEnd = paramsUrl.indexOf('&');
                if (isEnd != -1) {
                    return paramsUrl.substring(0, isEnd);
                } else { return paramsUrl; }
            } else { return null; }
        }
        else {
            return null;
        }
    };
}

