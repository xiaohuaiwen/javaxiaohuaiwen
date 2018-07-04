//每次重新创建
function createDistricts() {

    var str = "";
    var index_c = 1;
    for (var i = 0; i < Districts.length; i++) {
        if (index_c == 1) {
            str += "<tr> <td class='item'  onclick='Districts_c(this)' index=" + Districts[i].index + ">" + Districts[i].name + "</td>";
            index_c++;
            continue;

        }
        if (index_c == 2) {
            str += " <td class='item'  onclick='Districts_c(this)' index=" + Districts[i].index + ">" + Districts[i].name + "</td>"
            index_c++;
            continue;

        }
        if (index_c == 3) {
            str += " <td class='item'  onclick='Districts_c(this)' index=" + Districts[i].index + ">" + Districts[i].name + "</td></tr>"
            index_c = 1;
            continue;

        }

    }

    var textDistrict = jQuery("#District_Text").html();

    if (textDistrict == null) {
        textDistrict = "请选择区县";
    }
    var str2 = "<a   id='selDistrict_a' onclick='createDistricts()'    class='select_menu mr8'><span id='District_Text'>" + textDistrict + "</span></a> <div class='select_con mr8' id='selDistrict_t'   ><table border='0' cellpadding='5' cellspacing='0' > " + str + " </table></div>";

    //var str2 = "<a   id='selDistrict_a' onclick='createDistricts()'  onmouseover='createDistricts()'  class='select_menu mr8'><span id='District_Text'>" + textDistrict + "</span></a> <div class='select_con mr8' id='selDistrict_t'   ><table border='0' cellpadding='5' cellspacing='0' > " + str + " </table></div>";

    jQuery("#selDistrict").html(str2);
    $('DistrictAndComarea').style.color = 'Blue';
    ChangWord1(jQuery("#DistrictAndComarea"), "请选择区县", "");
    jQuery("#selDistrict_t").mouseleave(function () {

        if (jQuery("#selDistrict_t").html() != null) {
            jQuery("#selDistrict_t").hide();
            if (jQuery("#input_DISTRICT").val() == "") {
                $('DistrictAndComarea').style.color = 'red';
                ChangWord1(jQuery("#DistrictAndComarea"), "请选择区域", "red");
            }
            else {
                if (jQuery("#Comarea_Text").html() == "" || jQuery("#Comarea_Text").html() == "请选择商圈") {
                    ChangWord1(jQuery("#DistrictAndComarea"), "请选择商圈", "red");
                } else {
                    ChangWord2(jQuery("#DistrictAndComarea"));
                }

                jQuery("#District_Text").html(jQuery("#input_DISTRICT").val());

            }
        }
    })



}


function createOtherDistricts(item) {
    var index_d = item.getAttribute("index");
    var str = "";
    var index_c = 1;



    for (var i = 0; i < Area[index_d].length; i++) {
        if (index_c == 1) {
            str += "<tr> <td class='item'  onclick='DistrictsOther_c(this)' index=" + Area[index_d][i].index + "   indexDistricts=" + index_d + "  >" + Area[index_d][i].name + "</td>";
            index_c++;
            continue;

        }
        if (index_c == 2) {
            str += " <td class='item'  onclick='DistrictsOther_c(this)' index=" + Area[index_d][i].index + "    indexDistricts=" + index_d + ">" + Area[index_d][i].name + "</td>"
            index_c++;
            continue;

        }
        if (index_c == 3) {
            str += " <td class='item'  onclick='DistrictsOther_c(this)' index=" + Area[index_d][i].index + "     indexDistricts=" + index_d + "    >" + Area[index_d][i].name + "</td></tr>"
            index_c = 1;
            continue;

        }

    }

    var textDistrict = jQuery("#otherDistrict_Text").html();
    var str2 = "<a   id='selOtherDistrict_a'   index=" + index_d + "     onclick='createOtherDistricts(this)'    class='select_menu mr8'><span id='otherDistrict_Text'>" + textDistrict + "</span></a> <div class='select_con mr8' id='selOtherDistrict_t'   ><table border='0' cellpadding='5' cellspacing='0' > " + str + " </table></div>";
    jQuery("#selComarea").html(str2);
    $('DistrictAndComarea').style.color = 'Blue';
    ChangWord1(jQuery("#DistrictAndComarea"), "请选择区县", "");
    jQuery("#selOtherDistrict_t").mouseleave(function () {

        if (jQuery("#selOtherDistrict_t").html() != null) {
            jQuery("#selOtherDistrict_t").hide();
            if (jQuery("#input_DISTRICT").val() == "") {
                $('DistrictAndComarea').style.color = 'red';
                ChangWord1(jQuery("#DistrictAndComarea"), "请选择区域", "red");
            }
            else {
                if (jQuery("#OtherComarea_Text").html() == "" || jQuery("#OtherComarea_Text").html() == "请选择商圈") {
                    ChangWord1(jQuery("#DistrictAndComarea"), "请选择商圈", "red");
                } else {
                    ChangWord2(jQuery("#DistrictAndComarea"));
                }

                jQuery("#otherDistrict_Text").html(jQuery("#input_DISTRICT").val());

            }
        }
    })

}


var area_a;
function Districts_c(item) {
    var oldDistrict = jQuery("#District_Text").html();
    var index = item.getAttribute("index");

    area_a = Area[index];                                          //根据所选择的区县的编号，获取所有的商圈
    jQuery("#input_DISTRICT").val(item.innerHTML); //给隐藏于赋值

    //从新拼接内容
    jQuery("#selDistrict").html("<a   id='selDistrict_a' onclick='createDistricts()'  class='select_menu mr8'><span id='District_Text'>" + item.innerHTML + "</span></a> <div class='select_con mr8' id='selDistrict_t'     ></div>");

    var isIncludeCity = false;

    for (var i = 0; i < cityIncludeCity.length; i++) {
        if (cityIncludeCity[i]['cityname'] == jQuery("#District_Text").html()) {
            isIncludeCity = true;
        }

        //area_a = Area[index];
        //jQuery("#input_DISTRICT").val(item.innerHTML);
        //jQuery("#selDistrict").html("<a   id='selDistrict_a' onclick='createDistricts()' onmouseover='createDistricts()' class='select_menu mr8'><span id='District_Text'>" + item.innerHTML + "</span></a> <div class='select_con mr8' id='selDistrict_t'     ></div>");

        var textComarea = jQuery("#Comarea_Text").html();
        if (item.innerHTML != oldDistrict) {
            textComarea = "请选择商圈";

        }


        if (isIncludeCity) {
            $("selOtherComarea").style.display = "";

            jQuery("#selComarea").html("<a   id='selOtherDistrict_a'   index='" + index + "'   onclick='createOtherDistricts(this)'   class='select_menu mr8'><span id='otherDistrict_Text'>请选择区县</span></a> <div class='select_con mr8' id='selOtherDistrict_t' ></div>");
            jQuery("#input_City").val(jQuery("#District_Text").html());
            jQuery("#input_DISTRICT").val("");

            //jQuery("#selComarea").html("<a   id='selComarea_a' onclick='createComarea()' class='select_menu mr8'><span id='Comarea_Text'>" + textComarea + "</span></a> <div class='select_con mr8' id='selComarea_t' ></div>");
            jQuery("#input_COMAREA").val("");



            if (jQuery("#Comarea_Text").html() != "请选择商圈" && jQuery("#Comarea_Text").html() != "") {
                ChangWord2(jQuery("#DistrictAndComarea"));
            } else {
                createComarea();
            }


        } else {
            $("selOtherComarea").style.display = "none";


            //获取商圈框中的值
            var textComarea = jQuery("#Comarea_Text").html();
            if (item.innerHTML != oldDistrict) {
                textComarea = "请选择商圈";
            }

            jQuery("#selComarea").html("<a   id='selComarea_a' onclick='createComarea()' class='select_menu mr8'><span id='Comarea_Text'>" + textComarea + "</span></a> <div class='select_con mr8' id='selComarea_t' ></div>");
            jQuery("#input_COMAREA").val("");
            jQuery("#input_City").val('');
            if (jQuery("#Comarea_Text").html() != "请选择商圈" && jQuery("#Comarea_Text").html() != "") {
                ChangWord2(jQuery("#DistrictAndComarea"));
            } else {
                createComarea();
            }

        }
    }
}

function DistrictsOther_c(item) {
    var oldDistrict = jQuery("#otherDistrict_Text").html();
    var index = item.getAttribute("index");
    var indexDistricts = item.getAttribute("indexDistricts");

    for (var i = 0; i < Area[indexDistricts].length; i++) {
        if (Area[indexDistricts][i].name == item.innerHTML) {
            area_a = Area[indexDistricts][i].comarea;  //根据所选择的区县的编号，获取所有的商圈
        }
    }


    jQuery("#input_DISTRICT").val(item.innerHTML); //给隐藏于赋值

    //给新的区县赋值
    jQuery("#selComarea").html("<a   id='selOtherDistrict_a'    index=" + indexDistricts + " onclick='createOtherDistricts(this)'  class='select_menu mr8'><span id='otherDistrict_Text'>" + item.innerHTML + "</span></a> <div class='select_con mr8' id='selOtherDistrict_t'     ></div>");


    //获取商圈框中的值
    var textComarea = jQuery("#OtherComarea_Text").html();
    //if (item.innerHTML != oldDistrict) {
    //    textComarea ="请选择商圈";
    //}
    textComarea = area_a[0].substring(area_a[0].indexOf(',') + 1, area_a[0].length); //默认选中第一个商圈
    //给新的商圈赋值
    jQuery("#selOtherComarea").html("<a   id='selOtherComarea_a'  index=" + indexDistricts + "   onclick='createOtherComarea(this)' class='select_menu mr8'><span id='OtherComarea_Text'>" + textComarea + "</span></a> <div class='select_con mr8' id='selOtherComarea_t' ></div>");
    jQuery("#input_COMAREA").val(textComarea);
    if (jQuery("#OtherComarea_Text").html() != "请选择商圈" && jQuery("#OtherComarea_Text").html() != "") {
        ChangWord2(jQuery("#DistrictAndComarea"));
    } else {
        createOtherComarea();
    }




}

//加载商圈
function createComarea() {

    var str = "";
    var index_c = 1;
    if (typeof (area_a) == "undefined") {
        // alert("请选择区县");

    } else {


        for (var i = 0; i < area_a.length; i++) {
            if (typeof (area_a[i]) != "undefined") {
                if (index_c == 1) {
                    str += "<tr> <td class='item'  onclick='createComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td><td class='item' size=2 style='width:34px'></td><td     class='item' size=3 style='width:34px'></td></tr>";
                    index_c++;
                    continue;

                }
                if (index_c == 2) {
                    var str2;

                    str2 = " <td class='item'  onclick='createComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td>"
                    str = str.replace("<td class='item' size=2 style='width:34px'></td>", str2);
                    index_c++;
                    continue;

                }
                if (index_c == 3) {
                    var str3;
                    str3 = " <td class='item'  onclick='createComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td>"
                    str = str.replace("<td     class='item' size=3 style='width:34px'></td>", str3)
                    index_c = 1;
                    continue;

                }
            }
        }
    }
    var str2 = "<a   id='selComarea_a' onclick='createComarea()'  class='select_menu mr8'><span id='Comarea_Text'>请选择商圈</span></a> <div class='select_con mr8' id='selComarea_t' ><table border='0' cellpadding='5' cellspacing='0' > " + str + " </table></div>"
    jQuery("#selComarea").html(str2);

    $('DistrictAndComarea').style.color = 'Blue';
    ChangWord1(jQuery("#DistrictAndComarea"), "请选择商圈", "");
    jQuery("#selComarea_t").mouseleave(function () {

        if (jQuery("#selComarea_t").html() != null) {
            jQuery("#selComarea_t").hide();
            if (jQuery("#input_COMAREA").val() == "") {
                $('DistrictAndComarea').style.color = 'red';
                ChangWord1(jQuery("#DistrictAndComarea"), "请选择商圈", "red");
            }
            else {
                ChangWord2(jQuery("#DistrictAndComarea"));
                jQuery("#Comarea_Text").html(jQuery("#input_COMAREA").val());

            }
        }
    })
}

//在新框中创建商圈
function createOtherComarea() {

    var str = "";
    var index_c = 1;
    if (typeof (area_a) == "undefined") {
        // alert("请选择区县");

    } else {


        for (var i = 0; i < area_a.length; i++) {
            if (typeof (area_a[i]) != "undefined") {
                if (index_c == 1) {
                    str += "<tr> <td class='item'  onclick='createOtherComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td><td class='item' size=2 style='width:34px'></td><td     class='item' size=3 style='width:34px'></td></tr>";
                    index_c++;
                    continue;

                }
                if (index_c == 2) {
                    var str2;

                    str2 = " <td class='item'  onclick='createOtherComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td>"
                    str = str.replace("<td class='item' size=2 style='width:34px'></td>", str2);
                    index_c++;
                    continue;

                }
                if (index_c == 3) {
                    var str3;
                    str3 = " <td class='item'  onclick='createOtherComarea_bs_c(this)' index=" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + ">" + area_a[i].substring(area_a[i].indexOf(",") + 1, area_a[i].length) + "</td>"
                    str = str.replace("<td     class='item' size=3 style='width:34px'></td>", str3)
                    index_c = 1;
                    continue;

                }
            }
        }
    }
    var str2 = "<a   id='selOtherComarea_a' onclick='createOtherComarea()' onmouseover='createOtherComarea()' class='select_menu mr8'><span id='OtherComarea_Text'>请选择商圈</span></a> <div class='select_con mr8' id='selOtherComarea_t' ><table border='0' cellpadding='5' cellspacing='0' > " + str + " </table></div>"
    jQuery("#selOtherComarea").html(str2);

    $('DistrictAndComarea').style.color = 'Blue';
    ChangWord1(jQuery("#DistrictAndComarea"), "请选择商圈", "");
    jQuery("#selOtherComarea_t").mouseleave(function () {

        if (jQuery("#selOtherComarea_t").html() != null) {
            jQuery("#selOtherComarea_t").hide();
            if (jQuery("#input_COMAREA").val() == "") {
                $('DistrictAndComarea').style.color = 'red';
                ChangWord1(jQuery("#DistrictAndComarea"), "请选择商圈", "red");
            }
            else {
                ChangWord2(jQuery("#DistrictAndComarea"));
                jQuery("#OtherComarea_Text").html(jQuery("#input_COMAREA").val());

            }
        }
    })
}

function createComarea_bs_c(item) {
    var index = item.getAttribute("index");
    jQuery("#input_COMAREA").val(item.innerHTML);
    jQuery("#selComarea").html("<a   id='selComarea_xz_a' onclick='createComarea()' class='select_menu mr8'><span id='Comarea_Text'>" + item.innerHTML + "</span></a> <div class='select_con mr8' id='selComarea_t' ></div>");
    if (jQuery("#District_Text").html() != "请选择区域" && jQuery("#District_Text").html() != "") {
        ChangWord2(jQuery("#DistrictAndComarea"));
        AddTitleContext();

    } else {
        ChangWord1(jQuery("#DistrictAndComarea"), "请选择区域", "red");
    }

}

function createOtherComarea_bs_c(item) {
    //var index = item.getAttribute("index");
    jQuery("#input_COMAREA").val(item.innerHTML);
    jQuery("#selOtherComarea").html("<a   id='selOtherComarea_xz_a' onclick='createOtherComarea(this)' class='select_menu mr8'><span id='OtherComarea_Text'>" + item.innerHTML + "</span></a> <div class='select_con mr8' id='selOtherComarea_t' ></div>");
    if (jQuery("#OtherDistrict_Text").html() != "请选择区域" && jQuery("#OtherDistrict_Text").html() != "") {
        ChangWord2(jQuery("#DistrictAndComarea"));
        AddTitleContext();

    } else {
        ChangWord1(jQuery("#DistrictAndComarea"), "请选择区域", "red");
    }

}

function getInnerText(obj) {
    return document.all ? obj.innerText : obj.textContent;
}

function createArea(districtIndex) {

}
function BindProjData(data) {
    $("input_TRAFFICINFO").value = "";
    $("input_AROUNDCONDITION").value = "";

    var xmldoc = data;
    var busNode = xmldoc.getElementsByTagName("bustext")[0].firstChild;
    if (busNode && busNode.data) {
        $("input_TRAFFICINFO").value = busNode.data.substr(0, 200);
    }
    var aroundNode = xmldoc.getElementsByTagName("aroundservice")[0].firstChild;
    if (aroundNode && aroundNode.data) {
        $("input_AROUNDCONDITION").value = aroundNode.data.substr(0, 200);
    }

}
function whichElement(e) {
    var targ
    if (!e)
        var e = window.event
    if (e.target)
        targ = e.target
    else if (e.srcElement)
        targ = e.srcElement
    if (targ.nodeType == 3)
        targ = targ.parentNode
    return targ;
}
function initializeInput() {
    var inputs = document.getElementsByTagName('INPUT');
    for (var i = 0; i < inputs.length; i++) {
        var inputname = inputs[i].name, type = inputs[i].type;


        //文本框onchange时判断数据类型；onblur时判断是否必填
        var iname = inputname.split("_");
        if (iname.length >= 4) {
            //设定图片数量
            if (iname[3] == "EXTENDINFO") {
                var colObj = getCol(iname[3] + "_" + iname[4]);
                if (colObj && colObj.max) {
                    $("button_" + iname[3] + "_" + iname[4]).setAttribute("maxpic", colObj.max);
                }
            }
        }
    }

    //$("button_baseall").onclick=function(){ChangeListSelected("input_n_str_BASESERVICE");}
    var roomFacility = false, otherFacility = false;
    $("button_equitmentall").onclick = function () {
        if (roomFacility) {
            $('button_equitmentall').value = "全选";
            roomFacility = false;

            $('ck_room_gas').checked = false;
            $('ck_room_online').checked = false;
            $('ck_room_onlinetv').checked = false;
            $('ck_room_heating').checked = false;
            $('ck_room_elevator').checked = false;
            $('ck_room_packing').checked = false;
            $('ck_room_basement').checked = false;
            $('ck_room_garden').checked = false;
            $('ck_room_phone').checked = false;
            $('ck_room_air').checked = false;
            $('ck_room_ice').checked = false;
            $('ck_room_wash').checked = false;
            $('ck_room_water').checked = false;
            $('ck_room_ovens').checked = false;
            $('ck_room_kitchenware').checked = false;
            $('ck_room_bed').checked = false;
            $('ck_room_others').checked = false;

            $('ckCheKu').checked = false;
            $('ckLuTai').checked = false;
            $('ckYouYongChi').checked = false;
            $('ckGeLou').checked = false;
            $('ckFang').checked = false;
        }
        else {
            $('button_equitmentall').value = "全不选";
            roomFacility = true;

            $('ck_room_gas').checked = true;
            $('ck_room_online').checked = true;
            $('ck_room_onlinetv').checked = true;
            $('ck_room_heating').checked = true;
            $('ck_room_elevator').checked = true;
            $('ck_room_packing').checked = true;
            $('ck_room_basement').checked = true;
            $('ck_room_garden').checked = true;
            $('ck_room_phone').checked = true;
            $('ck_room_air').checked = true;
            $('ck_room_ice').checked = true;
            $('ck_room_wash').checked = true;
            $('ck_room_water').checked = true;
            $('ck_room_ovens').checked = true;
            $('ck_room_kitchenware').checked = true;
            $('ck_room_bed').checked = true;
            $('ck_room_others').checked = true;

            $('ckCheKu').checked = true;
            $('ckLuTai').checked = true;
            $('ckYouYongChi').checked = true;
            $('ckGeLou').checked = true;
            $('ckFang').checked = true;
        }
    }

    var tags = document.getElementsByName("input_n_str_TAGS");

    //tag计数
    checkeds = 0;
    for (var i = 0; i < tags.length; i++) {
        if (tags[i].checked)
            checkeds++;

        tags[i].onclick = function (ev) {
            if (this.checked) {
                if ((++checkeds) > 3) {
                    checkeds--;
                    this.checked = false;
                    ShowMessage(ev, "最多选3项"); //alert("最多选3项");
                }
            }
            else {
                checkeds--;
            }
        }
    }
}
//绑定提示
function checkinput() {
    editor.SubmitData();
    var errmsg = ""; //firstObj=null;   
    var obj = document.form2.elements;
    errmsg = checkAttr(obj);
    if ($("tempphonecode")) {
        if ($("tempphonecode").value == "0") {
            errmsg += "<p>请申请手机号码认证</p>";
            //inputObj.className="inputerror"
        }
    }
    //处理整租合租
    var mright = window.document.getElementsByName("input_y_str_MRIGHT");
    for (var i = 0; i < mright.length; i++) {
        if (mright[i].checked == true) {
            var ispartner = 0;
            if (mright[i].value == "整租") {
                ispartner = 0;
            }
            else {
                ispartner = 1;
            }
            $("input_ISPARTNER").value = ispartner;
        }
    }
    //处理物业类型为enabled
    var projtypeobj = window.document.getElementsByName("input_n_str_PURPOSE");
    for (var i = 0; i < projtypeobj.length; i++) {
        projtypeobj[i].disabled = false;
    }

    $("divsub_msg").innerHTML = "";
    for (var i = 0; i < cols.length; i++) {
        if ($("input_" + cols[i].col)) {
            var inputObj = $("input_" + cols[i].col);
            if (cols[i].name.split("_")[1] == "y" && inputObj.value == "") {
                errmsg += "<p>" + cols[i].n + "不能为空</p>";
                inputObj.className = "inputerror";
                //firstObj=inputObj;
            }
        }
    }
    if ($("input_MOBILECODE").value != "") {
        if (!/^(13[0-9]|14[0-9]|15[0-9]|18[0-9]|95013)\d{8}$/.test($("input_MOBILECODE").value)) {
            errmsg += "<p>请输入正确的手机号码</p>";
        }
    }
    var floorVal = $("input_FLOOR").value;
    var totalVal = $("input_TOTLEFLOOR").value;

    if (floorVal != "" && totalVal == "" || parseInt(floorVal) > parseInt(totalVal)) {
        // $("input_TOTLEFLOOR").className = "inputerror";
        //firstObj=$("input_TOTLEFLOOR");
        errmsg += "<p>总楼层不能小于所在楼层</p>";
    }
    //验证租金
    var leaseprice = $("input_PRICE");
    if ($("input_PRICE").value != '' && $("input_PRICE").value <= 0) {
        // $("input_PRICE").className = "inputerror";
        errmsg += "<p>价格必须大于0</p>";
    }
    //验证面积
    var leaving = $("input_LIVINGAREA");
    var buildinga = $("input_BUILDINGAREA");
    if (parseFloat(buildinga.value) < parseFloat(leaving.value)) {
        leaving.className = "inputerror";
        buildinga.className = "inputerror";
        errmsg += "<p>使用面积不能大于建筑面积</p>";
    }
    if (parseFloat(buildinga.value) <= 0) {
        buildinga.className = "inputerror";
        errmsg += "<p>建筑面积必须大于0</p>";
    }
    if (leaving.value != '' && parseFloat(leaving.value) <= 0) {
        buildinga.className = "inputerror";
        errmsg += "<p>使用面积必须大于0</p>";
    }
    if (parseFloat(buildinga.value) > 9999.99) {
        buildinga.className = "inputerror";
        errmsg += "<p>建筑面积不能大于9999.99</p>";
    } ///
    if (leaving.value != '' && parseFloat(leaving.value) > 9999.99) {
        buildinga.className = "inputerror";
        errmsg += "<p>使用面积不能大于9999.99</p>";
    }
    if (leaving.value == '') {
        leaving.value = 0;
    }
    if (buildinga.value == '') {
        buildinga.value = 0;
    }
    //处理图片
    var imgnodes = document.getElementsByName("uploadimgs");
    if (imgnodes) {
        if (imgnodes.length > 0) {
            $("input_ISIMAGE").value = "1";
        }
        else {
            $("input_ISIMAGE").value = "0";
        }
        $("input_EXTENDINFO_xiaoqwj").value = '';
        $("input_EXTENDINFO_huxt").value = '';
        $("input_EXTENDINFO_shint").value = '';
        $("name_input_EXTENDINFO_xiaoqwj").value = '';
        $("name_input_EXTENDINFO_huxt").value = '';
        $("name_input_EXTENDINFO_shint").value = '';
        for (var i = 0; i < imgnodes.length; i++) {
            var imgtypname = imgnodes[i].getAttribute("type");
            var imghidden = $(imgtypname.replace("button", "input"));
            var namehidden = $("name_" + imgtypname.replace("button", "input"));
            imghidden.value += imgnodes[i].src + ",";
            if ($("name_" + imgnodes[i].id).value == '') {
                $("name_" + imgnodes[i].id).className = "inputerror";
                errmsg += "<p>图片名称不能为空</p>";
                break;
            }
            namehidden.value += $("name_" + imgnodes[i].id).value + ",";
        }
    }
    if (errmsg != "") {
        //firstObj.focus();
        $("divsub_msg").innerHTML = errmsg;
        Mask.Resize();
        document.popups['divpup_tishi'].open();
        return false;
    }
    return true;
}

//检查页面元素的自定义属性
function checkAttr(obj) {
    var error = '';
    for (i = 0; i < obj.length; i++) {
        try {
            if (obj[i].getAttribute("num") != null && trim(obj[i].value) != "" && !checkisnumber(obj[i].id)) {
                if (obj[i].id != 'input_FLOOR') {
                    error += "<p>" + obj[i].getAttribute("num") + "</p>";
                    // obj[i].className = "inputerror";
                }
                else {
                    var regu = /^[-]{0,1}[0-9]{1,}$/;
                    if (!regu.test(obj[i].value)) {
                        error += "<p>楼层必须为整数</p>";
                        // obj[i].className = "inputerror";
                    }
                }
            }
            if (obj[i].getAttribute("float") != null && !checkisfloat(obj[i].id)) {
                error += "<p>" + obj[i].getAttribute("float") + "</p>";
                obj[i].className = "inputerror";
            }
        }
        catch (e) {
            return false;
        }
    }
    return error;
}

var hideTimer;
document.write('<div id="Message" style="position:absolute; z-index:100; padding:5px; line-height:120%; background-color:#FEFEF6; border:1px solid #FDB91A; visibility:hidden; display:none;font-size:12px"></div>');
function ShowMessage(ev, message) {
    if (hideTimer != null)
        window.clearTimeout(hideTimer);

    ev = ev || window.event;
    var msgobj = $('Message')

    msgobj.innerHTML = message;
    msgobj.style.display = '';
    msgobj.style.left = document.documentElement.scrollLeft + (ev.clientX) + 'px';
    msgobj.style.top = document.documentElement.scrollTop + ev.clientY - msgobj.offsetHeight - 10 + 'px';
    msgobj.style.visibility = 'visible';
    hideTimer = window.setTimeout(function () {
        if (msgobj.style.display == '')
            HideMessage();
    }, 2000);
}

function HideMessage(ev, message) {
    $('Message').style.visibility = 'hidden';
    $('Message').style.display = 'none';
}

//imgtype是id
function FinishSelect(imgsurl, imgtype) {
    var piccount = 0;
    var shintpic = document.getElementById("button_EXTENDINFO_shint_list");
    var xiaoqwjpic = document.getElementById("button_EXTENDINFO_xiaoqwj_list");
    var huxtpic = document.getElementById("button_EXTENDINFO_huxt_list");
    if (shintpic) {
        piccount = 10 - shintpic.getAttribute("maxpic");
    }
    if (xiaoqwjpic) {
        piccount = piccount + (10 - xiaoqwjpic.getAttribute("maxpic"));
    }
    if (huxtpic) {
        piccount = piccount + (10 - huxtpic.getAttribute("maxpic"));
    }

    if (imgsurl.indexOf(",") > 0) {
        var imgs = imgsurl.split(",");
        if (purpose == '住宅' && imgs.length > (10 - piccount)) {
            alert("您最多能上传10张图片");
        }
        else {
            for (var j = 0; j < imgs.length; j++) {
                var ddt = imgs[j].split('-');
                AddImg(ddt[1], ddt[0], imgtype);
            }
        }
    }
    else if (imgsurl.length > 0) {
        if (purpose == '住宅' && piccount == 10) {
            alert("您最多能上传10张图片");
        }
        else {
            var ddt = imgsurl.split('-');
            AddImg(ddt[1], ddt[0], imgtype);
        }
    }

    document.popups['divpup_pic'].close();
}

function settitleimg(imgUrl, img) {

    cleartitle("button_EXTENDINFO_shint_list");
    cleartitle("button_EXTENDINFO_xiaoqwj_list");
    cleartitle("button_EXTENDINFO_huxt_list");
    $("input_TITLEIMG").value = imgUrl;
    var p = img.parentNode.parentNode;
    var ar = p.getElementsByTagName("div");
    for (var i = 0; i < ar.length; i++) {
        if (ar[i].className == "img") {
            ar[i].className = "img2";
        }

    }
}
function cleartitle(element) {
    var p = $(element);
    if (typeof (p) == "undefined") {
        return;
    }

    var ar = p.getElementsByTagName("div");
    for (var i = 0; i < ar.length; i++) {
        var temp = ar[i];
        if (temp.className == "img2") {
            temp.className = "img";
            break;
        }
    }

}
function deletetitleimg() {

    $("input_TITLEIMG").value = "http://img.soufun.com/rent/image/usercenter/egimg.gif";

}
//butid 链接的id
function UploadClick(butid, butname, ev) {
    var imgObj = $(butid);
    //if(imgObj.getAttribute("maxpic")<=0){ ShowMessage(ev,"此类图片不能再上传了");return;}
    if (imgsCount >= maxImgCount) {
        ShowMessage(ev, "最多可上传10张照片,您已经不能再上传了");
        return;
    }
    document.pictureUploader.onclose = function () {
        AddImg(butname, this.url, butid);
    }
    Mask.Resize();
    document.pictureUploader.open();
}
function SelectClick_sp(ev, name, keyword, imgType) {
    if ($("input_PROJCODE_sp").value == "") {
        ShowMessage(ev, "楼盘名称使用搜房指定的名称时该功能才有效。");
        return;
    }

    $("tempprojimgs").value = "";
    if (imgType == "button_EXTENDINFO_huxt") {
        $("selectimghead").innerHTML = "<strong>小区相关户型图</strong>";
    }
    else {
        $("selectimghead").innerHTML = "<strong>小区相关图片</strong>";
    }
    var imgObj = $(imgType);

    document.getElementById("frmpup_pic").src = '/rent/rent_info/getprojimg.aspx?imgtype=' + imgType + '&keyword=' + keyword + '&newcode=' + $("input_PROJCODE_sp").value + '&imgname=' + name;
    Mask.Resize();
    document.popups['divpup_pic'].open();
}

function SelectClick_xz(ev, name, keyword, imgType) {
    if ($("input_PROJCODE_xz").value == "") {
        ShowMessage(ev, "楼盘名称使用搜房指定的名称时该功能才有效。");
        return;
    }

    $("tempprojimgs").value = "";
    if (imgType == "button_EXTENDINFO_huxt") {
        $("selectimghead").innerHTML = "<strong>小区相关户型图</strong>";
    }
    else {
        $("selectimghead").innerHTML = "<strong>小区相关图片</strong>";
    }
    var imgObj = $(imgType);

    document.getElementById("frmpup_pic").src = '/rent/rent_info/getprojimg.aspx?imgtype=' + imgType + '&keyword=' + keyword + '&newcode=' + $("input_PROJCODE_xz").value + '&imgname=' + name;
    Mask.Resize();
    document.popups['divpup_pic'].open();
}

//imgType是链接的id
function SelectClick(ev, name, keyword, imgType) {
    if ($("input_PROJCODE").value == "") {
        ShowMessage(ev, "楼盘名称使用搜房指定的名称时该功能才有效。");
        return;
    }

    $("tempprojimgs").value = "";
    if (imgType == "button_EXTENDINFO_huxt") {
        $("selectimghead").innerHTML = "<strong>小区相关户型图</strong>";
    }
    else {
        $("selectimghead").innerHTML = "<strong>小区相关图片</strong>";
    }
    var imgObj = $(imgType);

    document.getElementById("frmpup_pic").src = '/rent/rent_info/getprojimg.aspx?imgtype=' + imgType + '&keyword=' + keyword + '&newcode=' + $("input_PROJCODE").value + '&imgname=' + name;
    Mask.Resize();

    document.popups['divpup_pic'].open();
}
function BindUploadBut() {

    $("button_EXTENDINFO_selectwj_xz").onclick = function (ev) {
        SelectClick_xz(ev, this.value, "外景图", "button_EXTENDINFO_xiaoqwj")
    }

    $("button_EXTENDINFO_selecthx_xz").onclick = function (ev) {
        SelectClick_xz(ev, this.value, "户型图", "button_EXTENDINFO_huxt")
    }

    $("button_EXTENDINFO_selectwj_sp").onclick = function (ev) {
        SelectClick_sp(ev, this.value, "外景图", "button_EXTENDINFO_xiaoqwj")
    }
    $("button_EXTENDINFO_selectwj").onclick = function (ev) {
        SelectClick(ev, jQuery("#button_EXTENDINFO_selectwj").attr("NameValue"), "外景图", "button_EXTENDINFO_xiaoqwj")
    }
    if (purpose != '商铺') {
        $("button_EXTENDINFO_selecthx").onclick = function (ev) {
            SelectClick(ev, jQuery("#button_EXTENDINFO_selecthx").attr("NameValue"), "户型图", "button_EXTENDINFO_huxt")
        }
    }
    if (purpose == '住宅') {
        $("button_EXTENDINFO_selectwj1").onclick = function (ev) {
            SelectClick(ev, jQuery("#button_EXTENDINFO_selectwj1").attr("NameValue"), "外景图", "button_EXTENDINFO_xiaoqwj")
        }
        $("button_EXTENDINFO_selecthx1").onclick = function (ev) {
            SelectClick(ev, jQuery("#button_EXTENDINFO_selecthx1").attr("NameValue"), "户型图", "button_EXTENDINFO_huxt")
        }
    }


}
function BindAddressList() {
    var addressNodes = this.responseXML.getElementsByTagName("address");
    var tdAddress = $("td_ADDRESS");
    if (addressNodes.length > 0) {
        var listDiv = document.createElement("div");
        listDiv.className = "noborder";
        listDiv.id = "addrlist_1";

        for (var i = 0; i < addressNodes.length; i++) {
            var addressItem = document.createElement("div");
            addressItem.innerHTML = "<label><input type='radio' value='" + addressNodes[i].firstChild.data + "' name='input_n_str_ADDRESSOTHER'/>" + addressNodes[i].firstChild.data + "</label>";
            listDiv.appendChild(addressItem);
        }

        tdAddress.appendChild(listDiv);
    }
    var outDiv = document.createElement("div");
    outDiv.id = "addrlist_2";
    outDiv.innerHTML = "<input type='radio' name='input_n_str_ADDRESSOTHER' id='Rd_AddressItem_Custom' style='border:0'/><input id='addrother_text' name='addrother_text' type='text' maxlength='60' size='60' value='以上描述都不满意，请在此输入。' onfocus='if(this.value==\"以上描述都不满意，请在此输入。\")this.value=\"\";$(\"Rd_AddressItem_Custom\").checked=true;' onblur='if(this.value!=\"\"){$(\"Rd_AddressItem_Custom\").value=this.value;}else{this.value=\"以上描述都不满意，请在此输入。\"}' class='fontgray'/>"

    tdAddress.appendChild(outDiv);

    if ($("typeMethod")) {
        if (input_ADDRESSOTHER_value && input_ADDRESSOTHER_value != "") {
            var addrothers = document.getElementsByName(getCol("ADDRESSOTHER").name);
            if (!setRadio(addrothers, input_ADDRESSOTHER_value)) {
                addrothers[addrothers.length - 1].value = input_ADDRESSOTHER_value;
                addrothers[addrothers.length - 1].checked = true;
                $("addrother_text").value = input_ADDRESSOTHER_value;
            }
        }
    }
}
//获取别名列表
function GetAddressList(projcode) {
    Xml.Request("/rent/rent_info/getAddressList.aspx?newcode=" + projcode, null, BindAddressList, null)
}
//当使用楼盘字典时
function UseProjListItem(sel_addr, sel_dis, sel_com, sel_newcode, projtype, distict_city, isedit) {

    //绑定物业类型
    if (projtype == "普通住宅" || projtype == "住宅" || projtype == "公寓") {
        projtype = "住宅";
    }
    var projtypeobj = window.document.getElementsByName("input_n_str_PURPOSE");
    for (var i = 0; i < projtypeobj.length; i++) {
        if (projtypeobj[i].value == projtype) {
            projtypeobj[i].checked = true;
        }
        projtypeobj[i].disabled = true;
    }
    //绑定默认外景图（在xmlhttp.js）
    if (isedit != "isedit") {
        // defaultWjImg(sel_newcode,$("input_PROJNAME").value);
    }
    //楼盘id赋值
    $("input_PROJCODE").value = sel_newcode;

    if (sel_newcode != "") {
        jQuery.ajax({
            url: '/rent/rent_info/getprojdata.aspx?newcode=' + sel_newcode, success: function (data) {
                BindProjData(data);

            }
        });
    }


    //给地址赋值并设为只读。
    if (sel_addr.length > 30) {
        var subaddr = sel_addr.substr(0, 30);
        $("input_ADDRESS").value = subaddr;
    }
    else {
        $("input_ADDRESS").value = sel_addr;
    }
    $("input_ADDRESS").readOnly = true;
    var tempindex = 0;


    jQuery("#selDistrict").html("<a   id='selDistrict_a'  onclick='createDistricts()' class='select_menu mr8'><span id='District_Text'>" + sel_dis + "</span></a> <div class='select_con mr8' id='selDistrict_t'   ></div>");

    jQuery("#selComarea").html("<a   id='selComarea_xz_a' onclick='createComarea()' class='select_menu mr8'><span id='Comarea_Text'>" + sel_com + "</span></a> <div class='select_con mr8' id='selComarea_t'  ></div>");
    $("input_DISTRICT").value = sel_dis;
    $("input_COMAREA").value = sel_com;


    var isIncludeCity = false;
    var districtIncludeCity = false;
    for (var i = 0; i < cityIncludeCity.length; i++) {
        if (cityIncludeCity[i]['cityname'] == distict_city) {
            isIncludeCity = true;
        }
        if (cityIncludeCity[i]['cityname'] == sel_dis) {
            districtIncludeCity = true;
        }
    }
    //绑定城市
    if (isIncludeCity) {
        //选择的区县商圈是下属城市的区县商圈
        $("input_City").value = distict_city;
    } else if (districtIncludeCity) {
        //选择的区县商圈是当前城市的区县，但该区县是下属城市
        $("input_DISTRICT").value = '其他';
        $("input_City").value = sel_dis;
    }

    document.getElementById("sp_districtcomarea").style.display = "";
    $("DistrictAndComarea").innerHTML = "<img src='http://img.soufun.com/secondhouse/image/esfnew/images/delegateandjx/tureicon.gif'>";
    document.getElementById("sp_districtcomarea").innerHTML = sel_dis + "-" + sel_com + " " + document.getElementById("input_ADDRESS").value;

    //进行sel_newcode验证。
    if (!sel_newcode || sel_newcode.toString() == "0")
        return;

    //创建地址的纠错
    var addressSPAN = document.createElement("span");
    addressSPAN.id = "addrspan_1";
    addressSPAN.className = "button darkgray";
    //显示选择图片按钮
    $("selectwjimg").style.display = '';
    if (purpose != '商铺') {
        $("selecthximg").style.display = '';
    }
    if (purpose == '住宅') {
        $("selectwjimg1").style.display = '';
        $("selecthximg1").style.display = '';
    }
}
//当不使用时
function RemoveProjNameRelational() {
    $("input_ADDRESS").readOnly = false;
    $("input_PROJCODE").value = "";
    $("input_ADDRESS").value = "";
    $("input_DISTRICT").value = "";
    $("input_COMAREA").value = "";
    document.getElementById("sp_districtcomarea").value = "";
    document.getElementById("sp_districtcomarea").style.display = "none";
    $("sp_address").innerHTML = "";
    $("DistrictAndComarea").innerHTML = "";

    $("selDistrict").selectedIndex = 0;
    //	$("selComarea").selectedIndex=0;
    //createDistricts();
    createArea(0);
    document.getElementById('selectwjimg').style.display = "none";
    if (purpose != '商铺') {
        document.getElementById('selecthximg').style.display = "none";
    }
    if (purpose == '住宅') {
        document.getElementById('selectwjimg1').style.display = "none";
        document.getElementById('selecthximg1').style.display = "none";
    }

    if ($("addrspan_1")) {
        var list1 = $("addrspan_1");
        list1.parentNode.removeChild(list1);
    }
    if ($("addrlist_1")) {
        var list1 = $("addrlist_1");
        list1.parentNode.removeChild(list1);
    }
    if ($("addrlist_2")) {
        var list1 = $("addrlist_2");
        list1.parentNode.removeChild(list1);
    }
    $("input_TRAFFICINFO").value = '';
    $("input_AROUNDCONDITION").value = '';
    return;
}

initializeInput();
BindUploadBut();

window.onload = function () {

    $("input_TITLE").onkeyup = function () {
        charCounter(this, 60);
    }
    $("input_PROJNAME").onkeydown = function () {
        charCounter(this, 30);
    }
    $("input_ADDRESS").onkeyup = function () {
        charCounter(this, 60);
    }
    $("input_ADDRESS").onchange = function () {
        charCounter(this, 60);
    }
    $("input_TITLE").onchange = function () {
        var reg = /([0-9]|一|二|三|四|五|六|七|八|九|十|两|几|\\s|&nbsp;)*分(\\s|&nbsp;)*钟|([0-9]|一|二|三|四|五|六|七|八|九|十|两|几|\\s|&nbsp;)*分/;
        var r = reg.test(this.value);
        if (r) {
            $("tilefilter").style.display = "";
        } else {
            $("tilefilter").style.display = "none";
        }
    }
}
//添加图片，做图片计数
var imgsCount = 0, maxImgCount = 10, typeImgCount = 20;
function AddImg(imgName, imgUrl, imgType) {
    var nametype = "";
    switch (imgType) {
        case "button_EXTENDINFO_shint": //室内图
            nametype = "Sfile";
            break;
        case "button_EXTENDINFO_xiaoqwj": //小区相关图
            nametype = "Dfile";
            break;
        case "button_EXTENDINFO_huxt": //户型图
            nametype = "Ffile";
            break;
    }

    if (imgType)
        //计数减一
        var thisImgIndex = 0;
    var imgTypeObj = $(imgType + "_list");
    if (imgTypeObj.getAttribute("maxpic")) {
        var maxpicnum = parseInt(imgTypeObj.getAttribute("maxpic"));
        thisImgIndex = typeImgCount - maxpicnum + 1;
        //        if(maxpicnum==0)
        //        {
        //            //不能再上传了
        //            return;
        //        }
        imgTypeObj.setAttribute("maxpic", maxpicnum - 1);
    }
    if (imgName.indexOf('选择') != -1 || imgName.indexOf('上传') != -1) {
        imgName = imgName.substring(2) + thisImgIndex;
    }
    var div = document.createElement("div");
    div.id = "imgs_" + imgsCount++;
    //div.name="dddfff";
    div.setAttribute("type", imgType);
    div.className = "houseimg";
    var host = imgUrl.substring(7, (imgUrl.indexOf(".com") + 4));
    var filenamecom = imgUrl.substring(imgUrl.indexOf(".com") + 5);
    var filename = filenamecom.substring(0, filenamecom.indexOf('.'));
    var imgUrlviewi = "http://" + host + "/viewimage/" + filename + "/80x60." + filenamecom.substring(filenamecom.indexOf('.') + 1);
    div.innerHTML = "<div class=\"img\"><p><img id='imgs_" + imgType + "_" + imgsCount + "' type='" + imgType + "' name=\"uploadimgs\" src=\"" + imgUrlviewi + "\" width=\"80\" height=\"80\" onload=\"sfphotoimage.Resize(this,80,80);SetMiddle(this,80)\"/></p><p></p><div class=\"clear\"></div></div><p class=\"fontgray\"><a href=\"javascript:;\" onclick=\"DeleteImg('" + div.id + "','" + imgType + "','" + imgUrl + "')\">删除</a> <a href=\"javascript:;\" onclick=\"settitleimg('" + imgUrl + "',this);\">设为标题图</a></p><p><input maxlength='10' id='name_imgs_" + imgType + "_" + imgsCount + "' name=\"name_uploadimgs\" type=\"text\" value=\"" + imgName + "\" style=\"width:108px\"/></p>";
    //如果是第一张图片则设为默认得标题图
    if (imgsCount == 1) {
        var aar = div.getElementsByTagName("a");
        var tite = null;
        for (var i = 0; i < aar.length; i++) {
            if (aar[i].innerHTML == "设为标题图") {
                tite = aar[i];
                break;
            }
        }
        settitleimg(imgUrl, tite);
    }
    $(imgType + "_list").appendChild(div);
    document.getElementById('spanUpload').removeAttribute("disabled");
    //document.getElementById('spanUpload').style.display = '';
    document.getElementById('progressImg').style.display = 'none';
}
function DeleteImg(imgid, listid, imgurl) {
    var butobj = $(listid + "_list");
    imgsCount--;
    if (butobj.getAttribute("maxpic") != null && butobj.getAttribute("maxpic") != undefined) {
        if (butobj.getAttribute("maxpic") < 10) {
            butobj.setAttribute("maxpic", parseInt(butobj.getAttribute("maxpic")) + 1);
        }
    }
    $(listid + "_list").removeChild($(imgid));
    if (imgurl == $("input_TITLEIMG").value) {
        if (imgsCount == 0) {
            deletetitleimg();
        }
        else {
            var ispictitle = false;
            var p = document.getElementById("button_EXTENDINFO_shint_list");
            var ar = p.getElementsByTagName("img");
            var arr = p.getElementsByTagName("a");
            if (ar.length == 0) {
                ispictitle = false;
            }
            else {
                ispictitle = true;
                settitleimg(ar[0].src, arr[0]);

            }
            if (!ispictitle) {
                var p1 = document.getElementById("button_EXTENDINFO_xiaoqwj_list");
                var ar1 = p1.getElementsByTagName("img");
                var arr1 = p1.getElementsByTagName("a");
                if (ar1.length == 0) {
                    ispictitle = false;
                }
                else {
                    ispictitle = true;
                    settitleimg(ar1[0].src, arr1[0]);

                }
            }
            if (!ispictitle) {
                var p2 = document.getElementById("button_EXTENDINFO_huxt_list");
                var ar2 = p2.getElementsByTagName("img");
                var arr2 = p2.getElementsByTagName("a");
                if (ar2.length == 0) {
                    ispictitle = false;
                }
                else {
                    ispictitle = true;
                    settitleimg(ar2[0].src, arr2[0]);

                }
            }


        }
    }
}



