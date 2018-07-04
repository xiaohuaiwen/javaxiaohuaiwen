var $ = function (i) {
    return document.getElementById(i);
}; 
function dvmouseout(obj, ulid) {
    document.getElementById(ulid).style.display = 'none';
    obj.className = "tag_select";
}
function LocationHrefReplace(url) {
    if (navigator.userAgent.indexOf("MSIE") > 0) {
        var referLink = document.createElement('a');
        referLink.href = url;
        document.body.appendChild(referLink);
        referLink.click();
    } else {
        window.location.replace(url);
    }
}
function dvmouseover(obj, ulid) {
    document.getElementById(ulid).style.display = '';
    obj.className = "tag_select_hover";
}
function limouseover(obj) {
    if (obj.className != "open_selected") {
        obj.className = 'open_hover';
    }
}
function limouseout(obj) {
    if (obj.attributes["selected"] == "true") {
        obj.className = 'open_selected';
    }
    else {
        if (obj.className != "open_selected") {
            obj.className = 'open';
        }
    }
}
var timeout;
function hiddenPt(dl) {
    var citychange = document.getElementById(dl.id);
    citychange.style.display = "none";
    timeout = setTimeout("hiddenPt", 100);
}
function showPt(dl) {
    var citychange = document.getElementById(dl.id);
    window.clearTimeout(timeout);
    citychange.style.display = "block";
}
function hsetclick() {
    var cb = document.getElementsByName("cb_hset");
    var cbvalue = '';
    for (var i = 0; i < cb.length; i++) {
        if (cb[i].checked) {
            cbvalue += cb[i].value + ',';
        }
    }
    if (cbvalue != '') {
        cbvalue = cbvalue.substring(0, cbvalue.length - 1);
    }
    var hset = '';
    var href = window.location.href;
    if (href.indexOf('u2') > 0) {
        if (cbvalue != '') {
            href = href.replace('u2' + hset, 'u2' + cbvalue);
        }
        else {
            href = href.replace('/u2' + hset, '').replace('-u2' + hset, '').replace('-u2' + hset, '');
        }
        LocationHrefReplace(href);
    } else {
        if (cbvalue != '') {
            if (href.indexOf('/house1') > 0) {
                href = href.replace('/house1', '/house1-u2' + cbvalue);
            }
            else {
                href = href.replace('/house', '/house-u2' + cbvalue);
            }
            LocationHrefReplace(href);
        }
    }
}

function setsearchword1(thisurl, defaultvalue) {
    var mykeywordurl = '';
    var inputkeyword=$('mykeyword').value.trim();
    if (inputkeyword == "" || inputkeyword == defaultvalue) {
        mykeywordurl = thisurl.replace('-kwnothing', '').replace('kwnothing', '');
        LocationHrefReplace(mykeywordurl);
    }
    else {
        mykeywordurl = thisurl.replace('kwnothing', 'kw' + urlEncode(inputkeyword));
        LocationHrefReplace(mykeywordurl);
    }
}

function searchPrice(ev) {
    var pmin = document.getElementById('minpirce').value.trim();
    var pmax = document.getElementById('maxprice').value.trim();
    var mypriceurl = '';
    ev = ev || window.event;

    if (pmin == 0 && pmax == 0) {
        pmin = ''; pmax = '';
    }
    if (pmin != "" && pmax != "" && parseInt(pmin) > parseInt(pmax)) {
        alert("最高租金不能低于最低租金！");
        return;
    }
    else if (pmin != "" && pmax != "") {
        mypriceurl = priceurl.replace('c2100', 'c2' + pmin).replace('d2100', 'd2' + pmax);
        mypriceurl = changkeyvalue(mypriceurl, mypriceurl.indexOf('l3') + 2, 1);
    }
    else if (pmin == "" && pmax != "") {
        mypriceurl = priceurl.replace('c2100', 'c20').replace('d2100', 'd2' + pmax);
        mypriceurl = changkeyvalue(mypriceurl, mypriceurl.indexOf('l3') + 2, 1);
    }
    else if (pmin != "" && pmax == "") {
        mypriceurl = priceurl.replace('c2100', 'c2' + pmin).replace('d2100', 'd20');
        mypriceurl = changkeyvalue(mypriceurl, mypriceurl.indexOf('l3') + 2, 1);
    } 
    else {
        mypriceurl = priceurl.replace('-c2100', '').replace('c2100', '').replace('-d2100', '').replace('d2100', '');
        mypriceurl = changkeyvalue(mypriceurl, mypriceurl.indexOf('l3') + 2, 0).replace('-l300', '').replace('l300', '');
    }
    mypriceurl = mypriceurl.replace('/-', '/').replace('//', '/');
    LocationHrefReplace(mypriceurl);
}

function changkeyvalue(str, index, value) {
    var mk = '';
    if (index < str.length) {
        for (var i = 0; i < str.length; i++) {
            if (i == index) {
                mk += value;
            }
            else {
                mk += str.charAt(i);
            }
        }
    }
    return mk;
}


function selectMultiImgs(obj,url) {
    if (obj != 'undifine' && obj != null) {
        LocationHrefReplace(url);
    }
}