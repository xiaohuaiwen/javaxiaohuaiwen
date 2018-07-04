//自动添加标题内容

function AddTitleContext() {


    var sel_room_and_hall = "";
    if (isHouseunit) {
        sel_room_and_hall = jQuery("#sel_room").val() + "室" + jQuery("#sel_hall").val() + "厅" + jQuery("#sel_wc").val() + "卫";
    }

    var input_Area_zz = ""
    if (jQuery("#input_Area").val() != "") {
        input_Area_zz = jQuery("#input_Area").val() + "平米"
    }
    var input_PROJNAME_zz = "";
    input_PROJNAME_zz = jQuery("#input_PROJNAME").val();

    if (input_PROJNAME_zz.length > 10) {
        input_PROJNAME_zz = input_PROJNAME_zz.substring(0, 10);
    }
    if (document.getElementById("rd_zhengzu").checked) {
        jQuery("#input_TITLE").val(jQuery("#input_DISTRICT").val() + jQuery("#input_COMAREA").val() + input_PROJNAME_zz + " " + input_Area_zz + jQuery("#sel_houseDecoration_bs").val() + sel_room_and_hall);
    } else {
        var sel_houseDecoration_bs_zz = "";
        sel_houseDecoration_bs_zz = jQuery("#RoomCount_bs").val();
        if (sel_houseDecoration_bs_zz != "") {
            sel_houseDecoration_bs_zz = sel_houseDecoration_bs_zz + "户合租";
        }
        jQuery("#input_TITLE").val(jQuery("#input_DISTRICT").val() + jQuery("#input_COMAREA").val() + input_PROJNAME_zz + " " + sel_houseDecoration_bs_zz + jQuery("#sel_houseDecoration_bs").val() + jQuery("#input_n_str_FORWARD_bs").val())
    }
}

function checkSP_LB() {
    var IsJYLeiBie = false;
    if (document.getElementById("leibie_sp1").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp2").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp3").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp4").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp5").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp6").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp7").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp8").checked) {
        IsJYLeiBie = true;
    };
    if (document.getElementById("leibie_sp9").checked) {
        IsJYLeiBie = true;
    };

    if (!IsJYLeiBie) {

        jQuery("#SP_JYLB").html("<img width='14' height='14' style='margin-bottom:4px;' class='veralM mr8' alt='' src='http://img.soufun.com/secondhouse/image/esfnew/images/delegateandjx/iconfree.gif'>请选择经营类别");
    } else {
        jQuery("#SP_JYLB").html("<img width='14' height='14' class='veralM' src='http://img.soufun.com/secondhouse/image/esfnew/images/delegateandjx/tureicon.gif'/>");
    }
}

//文档加载完成之后
jQuery(document).ready(function () {

    if (jQuery("#MyHouseType").val() == "写字楼") {
        jQuery("#ra400YesS").hide();
        jQuery("#public3").attr("checked", "checked");
        PublicHide();
        jQuery("#sel_housetype_New").val("写字楼");
        jQuery("#span_xz").show();
        jQuery("#sel_housetype").html("写字楼");
        jQuery("#btn_Save_w_s").hide();
        jQuery("#Publishdiv3").show();
        jQuery("#PeiTaoSheShi").hide();
    }

    if (jQuery("#MyHouseType").val() == "商铺") {
        jQuery("#ra400YesS").hide();
        jQuery("#public4").attr("checked", "checked");
        PublicHide();
        jQuery("#btn_Save_w_s").hide();
        jQuery("#spanUpload1").show();
        jQuery("#sel_housetype_New").val("商铺")
        jQuery("#sel_housetype").html("商铺")
        jQuery("#Publishdiv4").show();
        jQuery("#PeiTaoSheShi").hide();
    }
    jQuery("#SP_JYLBp").children().click(function () {
        checkSP_LB();
    })
    jQuery("#SP_JYLB2").children().click(function () {
        checkSP_LB();
    })
    //商铺加载事件
    //商铺名称 
    itemEvent(jQuery("#spname"), jQuery("#spnameContent"), "请输入商铺名称");
    //商铺地址
    itemEvent(jQuery("#adress_sp"), jQuery("#adress_spContent"), "请输入商铺地址", "#adress_sp_H");
    //商铺面积
    itemEvent(jQuery("#Area_sp"), jQuery("#AreaContent_sp"), "请输入商铺面积", "#Area_sp_H", "商铺面积只能为数字", "xiaoshou", "1");
    //商铺租金
    itemEvent(jQuery("#Price_sp"), jQuery("#PriceContent_sp"), "请输入商铺租金", "#Price_sp_H", "租金是能为数字", "xiaoshou", "1");

    jQuery("#Price_sp").blur(function () {
        var itemsPriceType_sp = document.getElementsByName("radio_zujinlb_sp");
        var pricetype = false;
        for (var i = 0; i < itemsPriceType_sp.length; i++) {
            if (itemsPriceType_sp[i].checked) {
                pricetype = true;
            }
        }

        if (pricetype == false) {
            ChangWord1(jQuery("#PriceContent_sp"), "请选择租金类型", "red");

        }
    })
    jQuery("#radio6").click(function () {
        CheckPriceXz();
    })
    jQuery("#radio7").click(function () {
        CheckPriceXz();
    })
    jQuery("#radio8").click(function () {
        CheckPriceXz();
    })
    function CheckPriceXz() {
        if (jQuery("#Price_sp").val() != "") {

            if (jQuery("#Price_sp").val() < 1) {
                ChangWord1(jQuery("#PriceContent_sp"), "请输入1-1000000000之内的数字", "red");
                return
            }
            if (isNaN(jQuery("#Price_sp").val())) {
                ChangWord1(jQuery("#PriceContent_sp"), "租金只能为数字", "red");
                return
            }

            ChangWord2(jQuery("#PriceContent_sp"));






        } else {

            ChangWord1(jQuery("#PriceContent_sp"), "请输入价格", "red");
        }
    }



    //写字楼加载事件
    //写字楼名称
    jQuery("#xzname").focus(function () {
        $('xznameContent').style.color = 'Blue';
        ChangWord1(jQuery("#xznameContent"), "请输入楼盘名称", "")

    })
    jQuery("#xzname").blur(function () {
        if (jQuery("#xzname").val() == "") {

            $('xznameContent').style.color = 'red';
            ChangWord1(jQuery("#xznameContent"), "请输入楼盘名称", "red");
            jQuery("#xzname_H").val();
        } else {

            if (isPrjname_xz == true) {
                jQuery("#xzname_H").val(jQuery("#xzname").val());

                SetStrValue(jQuery("#xzname").val(), jQuery("#xznameContent"))
            }
        }

    })
    //写字楼区县和商圈
    jQuery("#selDistrict_xz").focus(function () {

        $('DistrictAndComarea_xz').style.color = 'Blue';
        ChangWord1(jQuery("#DistrictAndComarea_xz"), "请选择区县", "");


    })
    jQuery("#selDistrict_xz").blur(function () {
        if (jQuery("#selDistrict_xz").val() != "" && jQuery("#selComarea_xz").val() != "") {
            ChangWord2(jQuery("#DistrictAndComarea_xz"));
        } else {

            $('DistrictAndComarea_xz').style.color = 'red';
            ChangWord1(jQuery("#DistrictAndComarea_xz"), "请选择区县或者商圈", "red");

        }

    })

    //写字楼地址
    jQuery("#adress_xz").focus(function () {

        $('adress_xzContent').style.color = 'Blue';
        ChangWord1(jQuery("#adress_xzContent"), "请输入楼盘地址", "");

    })
    jQuery("#adress_xz").blur(function () {
        if (jQuery("#adress_xz").val() == "") {

            $('adress_xzContent').style.color = 'red';
            ChangWord1(jQuery("#adress_xzContent"), "请输入楼盘地址", "red");

        } else {
            jQuery("#adress_xz_H").val(jQuery("#adress_xz").val());
            ChangWord2(jQuery("#adress_xzContent"))
        }

    });
    //写字楼面积


    jQuery("#area_xz").focus(function () {

        $('areaContent_xz').style.color = 'Blue';
        ChangWord1(jQuery("#areaContent_xz"), "请输入楼盘面积", "");

    })
    jQuery("#area_xz").blur(function () {

        $('areaContent_xz').style.color = 'red';
        if (jQuery("#area_xz").val() == "") {

            ChangWord1(jQuery("#areaContent_xz"), "请输入楼盘面积", "red")
        } else {
            if (jQuery("#area_xz").val() < 1) {
                ChangWord1(jQuery("#areaContent_xz"), "请输入1-1000000000之内的数字", "red");
                return
            }
            if (isNaN(jQuery("#area_xz").val())) {
                ChangWord1(jQuery("#areaContent_xz"), "楼盘面积只能为数字", "red");
                return
            }
            jQuery("#area_xz_H").val(jQuery("#area_xz").val());
            ChangWord2(jQuery("#areaContent_xz"));


        }

    });


    //写字楼楼层
    jQuery("#td_FLOOR_xz").focus(function () {

        $('td_FLOORAndinput_TOTLEFLOOR_xz').style.color = 'Blue';

        ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "请输入楼盘楼层", "")

    })
    //    jQuery("#td_FLOOR_xz").keyup(function () {
    //        if (/^[-]?\d+$/.test(jQuery("#td_FLOOR_xz").val())) {
    //            jQuery("#input_TOTLEFLOOR_xz").blur();
    //        }

    //    })
    jQuery("#td_FLOOR_xz").blur(function () {

        $('td_FLOORAndinput_TOTLEFLOOR_xz').style.color = 'red';
        if (jQuery("#td_FLOOR_xz").val() != "" && jQuery("#input_TOTLEFLOOR_xz").val() != "") {

            if (/^[-]?\d+$/.test(jQuery("#td_FLOOR_xz").val()) && /^[-]?\d+$/.test(jQuery("#input_TOTLEFLOOR_xz").val())) {

                if (Number(jQuery("#td_FLOOR_xz").val()) > Number(jQuery("#input_TOTLEFLOOR_xz").val())) {
                    ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "楼层数不能大于总楼层数", "red");
                }
                else {
                    jQuery("#td_FLOOR_xz_H").val(jQuery("#td_FLOOR_xz").val());
                    ChangWord2(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"));
                    return;
                }
            }
            else { ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "楼层数只能为数字", "red"); }


        } else {

            ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "请输入楼盘楼层", "red");
        }
        if (jQuery("#td_FLOOR_xz").val() != "") {
            jQuery("#td_FLOOR_xz_H").val(jQuery("#td_FLOOR_xz").val());
        }
    });
    jQuery("#input_TOTLEFLOOR_xz").focus(function () {

        $('td_FLOORAndinput_TOTLEFLOOR_xz').style.color = 'Blue';
        ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "请输入楼盘楼层", "")

    })
    //    jQuery("#input_TOTLEFLOOR_xz").keyup(function () {
    //        if (/^[-]?\d+$/.test(jQuery("#input_TOTLEFLOOR_xz").val())) {
    //            jQuery("#input_TOTLEFLOOR_xz").blur();
    //        }

    //    })
    jQuery("#input_TOTLEFLOOR_xz").blur(function () {

        $('td_FLOORAndinput_TOTLEFLOOR_xz').style.color = 'red';
        if (jQuery("#td_FLOOR_xz").val() != "" && jQuery("#input_TOTLEFLOOR_xz").val() != "") {
            if (/^[-]?\d+$/.test(jQuery("#td_FLOOR_xz").val()) && /^[-]?\d+$/.test(jQuery("#input_TOTLEFLOOR_xz").val())) {
                if (Number(jQuery("#td_FLOOR_xz").val()) > Number(jQuery("#input_TOTLEFLOOR_xz").val())) {
                    ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "楼层数不能大于总楼层数", "red");
                }
                else {
                    ChangWord2(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"));
                    jQuery("#input_TOTLEFLOOR_xz_H").val(jQuery("#input_TOTLEFLOOR_xz").val());
                    return;
                }
            } else { ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "楼层数只能为数字", "red"); }


        } else {


            ChangWord1(jQuery("#td_FLOORAndinput_TOTLEFLOOR_xz"), "请输入楼盘楼层", "red");
        }

    });
    //写字楼楼盘价格
    jQuery("#input_PRICE_xz").focus(function () {

        $('input_PRICE_context_xz').style.color = 'Blue';
        ChangWord1(jQuery("#input_PRICE_context_xz"), "请输入价格", "")

    })
    jQuery("#input_PRICE_xz").blur(function () {

        $('input_PRICE_context_xz').style.color = 'red';
        if (jQuery("#input_PRICE_xz").val() != "") {

            if (jQuery("#input_PRICE_xz").val() < 1) {
                ChangWord1(jQuery("#input_PRICE_context_xz"), "请输入1-1000000000之内的数字", "red");
                return
            }
            if (isNaN(jQuery("#input_PRICE_xz").val())) {
                ChangWord1(jQuery("#input_PRICE_context_xz"), "租金只能为数字", "red");
                return
            }
            var itemsPriceType_xz = document.getElementsByName("radio_PriceType_xz");
            var pricetype = false;
            for (var i = 0; i < itemsPriceType_xz.length; i++) {
                if (itemsPriceType_xz[i].checked) {
                    pricetype = true;
                }
            }

            if (pricetype == false) {
                ChangWord1(jQuery("#input_PRICE_context_xz"), "请输入租金类型", "red");

            } else {
                ChangWord2(jQuery("#input_PRICE_context_xz"));
            }

            jQuery("#input_PRICE_xz_H").val(jQuery("#input_PRICE_xz").val());




        } else {

            ChangWord1(jQuery("#input_PRICE_context_xz"), "请输入价格", "red");
        }

    });
    jQuery("#radio").click(function () {
        CheckPriceSp();
    })
    jQuery("#radio4").click(function () {
        CheckPriceSp();
    })
    jQuery("#radio5").click(function () {
        CheckPriceSp();
    })
    function CheckPriceSp() {
        if (jQuery("#input_PRICE_xz").val() != "") {

            if (jQuery("#input_PRICE_xz").val() < 1) {
                ChangWord1(jQuery("#input_PRICE_context_xz"), "请输入1-1000000000之内的数字", "red");
                return
            }
            if (isNaN(jQuery("#input_PRICE_xz").val())) {
                ChangWord1(jQuery("#input_PRICE_context_xz"), "租金只能为数字", "red");
                return
            }

            ChangWord2(jQuery("#input_PRICE_context_xz"));






        } else {

            ChangWord1(jQuery("#input_PRICE_context_xz"), "请输入价格", "red");
        }
    }

    //写字楼楼盘物业费
    itemEvent(jQuery("#input_cost"), jQuery("#manageprice_xz"), "请输入物业费", "#input_cost_H", "物业费只能为数字", "xiaoshou", "1");
    //写字楼楼盘物业公司
    // itemEvent(jQuery("#wuyegongsi"), jQuery("#wuyegongsicontext"), "请输入物业公司", "#wuyegongsi_H");



});
//写字楼支付方式
function zhifufangshi_xz_a() {

    var str = "  <a   class='select_menu' onclick='zhifufangshi_xz_a()'><span id='zhifufangshi_xz_d'>支付方式</span></a>  <div class='select_con4' id='zhifufangshi_xz_dl' > <ul> <li onclick='zhifufangshi_xz_l(this)'>面议</li>  <li  onclick='zhifufangshi_xz_l(this)'>月付</li>    <li  onclick='zhifufangshi_xz_l(this)'>季付</li>   <li  onclick='zhifufangshi_xz_l(this)'>半年付</li> <li  onclick='zhifufangshi_xz_l(this)'>年付</li></ul></div>";
    OnloadData_xz(jQuery("#zhifufangshi_xz"), str);
    ChangWord1(jQuery("#payinfospan_xz"), "请选择支付方式", "");

    jQuery("#zhifufangshi_xz_dl").mouseleave(function () {

        if (jQuery("#zhifufangshi_xz_dl").html() != null) {
            jQuery("#zhifufangshi_xz_dl").hide();
            if (jQuery("#zhifufangshi_xz_H").val() == "") {
                ChangWord1(jQuery("#payinfospan_xz"), "请选择支付方式", "red");
            }
            else {
                ChangWord2(jQuery("#payinfospan_xz"));
                jQuery("#zhifufangshi_xz_d").html(jQuery("#zhifufangshi_xz_H").val());

            }

        }
    });
}

function zhifufangshi_xz_l(item) {

    var str = "   <a   class='select_menu' onclick='zhifufangshi_xz_a()'><span>" + item.innerHTML + "</span></a>";
    OnloadData_xz(jQuery("#zhifufangshi_xz"), str);
    jQuery("#zhifufangshi_xz_H").val(item.innerHTML);
    ChangWord2(jQuery("#payinfospan_xz"));
}


//写字楼类型
function ChooseCategory_zx_a() {

    var str = " <a  class='select_menu mr8' onclick='ChooseCategory_zx_a()' ><span id='ChooseCategory_zx_d'>请选择类型</span></a><div class='select_con2_119 mr8' id='ChooseCategory_zx_dl' ><ul><li onclick='ChooseCategory_zx_l(this)'>纯写字楼</li><li onclick='ChooseCategory_zx_l(this)'>商住楼</li><li onclick='ChooseCategory_zx_l(this)'>商业综合体楼</li><li onclick='ChooseCategory_zx_l(this)'>酒店写字楼</li></ul></div>";
    OnloadData_xz(jQuery("#ChooseCategory_zx"), str);
    ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字楼类型", "");



    jQuery("#ChooseCategory_zx_dl").mouseleave(function () {
        if (jQuery("#ChooseCategory_zx_dl").html() != null) {
            jQuery("#ChooseCategory_zx_dl").hide();
            if (jQuery("#ChooseCategory_zx_H").val() == "") {
                ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字楼类型", "red");
            }
            else {
                if (jQuery("#ChooseLevel_zx_H").val() == "") {
                    ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字级别", "");
                } else {
                    ChangWord2(jQuery("#CategoryAndLevel_zx"));
                }
                jQuery("#ChooseCategory_zx_d").html(jQuery("#ChooseCategory_zx_H").val());

            }
        }
    });



}
function ChooseCategory_zx_l(item) {


    jQuery("#ChooseCategory_zx_H").val(item.innerHTML);
    var str = " <a  class='select_menu mr8' onclick='ChooseCategory_zx_a()' ><span>" + item.innerHTML + "</span></a>";
    OnloadData_xz(jQuery("#ChooseCategory_zx"), str);
    if (jQuery("#ChooseLevel_zx_H").val() == "") {
        ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字楼级别", "red");
    } else {
        ChangWord2(jQuery("#CategoryAndLevel_zx"));
    }
}

//写字级别
function ChooseLevel_zx_a() {
    var str = "<a  class='select_menu'  onclick='ChooseLevel_zx_a()'><span id='ChooseLevel_zx_d'>请选择级别</span></a><div class='select_con3_119' id='ChooseLevel_zx_dl' ><ul><li onclick='ChooseLevel_zx_l(this)'>甲级</li><li onclick='ChooseLevel_zx_l(this)'>乙级</li><li onclick='ChooseLevel_zx_l(this)'>丙级</li></ul></div>";
    ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字楼级别", "");

    OnloadData_xz(jQuery("#ChooseLevel_zx"), str);
    jQuery("#ChooseLevel_zx_dl").mouseleave(function () {

        if (jQuery("#ChooseLevel_zx_dl").html() != null) {
            jQuery("#ChooseLevel_zx_dl").hide();
            if (jQuery("#ChooseLevel_zx_H").val() == "") {
                ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字楼级别", "red");
            }
            else {
                if (jQuery("#ChooseCategory_zx_H").val() == "") {
                    ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字类型", "red");
                } else {
                    ChangWord2(jQuery("#CategoryAndLevel_zx"));
                }
                jQuery("#ChooseLevel_zx_d").html(jQuery("#ChooseLevel_zx_H").val());

            }
        }

    });

}
function ChooseLevel_zx_l(item) {




    document.getElementById("ChooseLevel_zx_H").value = item.innerHTML;


    var str = " <a  class='select_menu'  onclick='ChooseLevel_zx_a()'><span>" + item.innerHTML + "</span></a>";
    OnloadData_xz(jQuery("#ChooseLevel_zx"), str);
    if (jQuery("#ChooseCategory_zx_H").val() == "") {
        ChangWord1(jQuery("#CategoryAndLevel_zx"), "请选择写字类型", "red");
    } else {
        ChangWord2(jQuery("#CategoryAndLevel_zx"));
    }

}
function ChangWord1(item, value, MyType) {
    if (MyType == "red") {
        //if (item.attr('id') == "manageprice_xz") {
        //item.style.color = 'red';
        item.css("color", "red");
        //}
        item.html("<img width='14' height='14' style='margin-bottom:4px;' class='veralM mr8' alt='' src='http://img.soufun.com/secondhouse/image/esfnew/images/delegateandjx/iconfree.gif'>" + value);
    }
    else {
        //if (item.attr('id') == "manageprice_xz") {
        //item.style.color = 'Blue';
        item.css("color", "Blue");
        //}
        item.html("<img src='http://img.soufun.com/rent/image/rent/styles/img/NewZuFang/shuruicon.gif' width='14' height='14'  class='veralM mr8' style='margin-bottom:4px;'>" + value);
    }
}

//方法
function itemEvent(itemmain, itemcontet, value, itemId_H, shuzitest, xiaoshou, min) {

    itemmain.focus(function () {
        ChangWord1(itemcontet, value, "")

    });
    itemmain.blur(function () {
        if (itemmain.val() != "") {

            if (shuzitest === undefined) { } else {
                if (xiaoshou === undefined) {
                    if (!/^[-]?\d+$/.test(itemmain.val())) {
                        ChangWord1(itemcontet, shuzitest, "red");
                        return
                    }
                } else {
                    if (min === undefined) {

                    } else {
                        if (itemmain.val() < min) {
                            ChangWord1(itemcontet, "请输入1-1000000000之内的数字", "red");
                            return
                        }
                    }
                    if (isNaN(itemmain.val())) {
                        ChangWord1(itemcontet, shuzitest, "red");
                        return
                    }

                }
            }
            ChangWord2(jQuery(itemcontet));
            if (itemId_H === undefined) { } else {
                jQuery(itemId_H).val(itemmain.val());
            }

        } else {

            ChangWord1(itemcontet, value, "red");
        }

    });
}
//方法（下拉框）
var CreateMethods = "";
function itemEvent_x(itemmain_a, itemmain_l, itemmain, itemcontent, value, classname1, classname2, classname3, itemcontent_c, defaultvalue_xz, GiveValueItem, addmethd, addItemTitleValue) {


    var str2 = "jQuery(\"#" + itemmain + "_dl";
    //    if (itemmain_a == "sel_houseDecoration_a") {
    //        str2 += ",#" + itemmain + "_aid ";
    //    }
    str2 += "\").mouseleave(function () {  if (jQuery(\"#" + itemmain + "_dl\").html()!= null) { jQuery(\"#" + itemmain + "_dl\").hide();if (jQuery(\"#" + GiveValueItem + "\").val() ==\"\"){  ChangWord1(jQuery(\"#" + itemcontent + "\"), \"" + itemcontent_c + "\", \"red\");}";

    str2 += "else { jQuery(\"#" + itemmain + "_d\").html(jQuery(\"#" + GiveValueItem + "\").val()); " + str3 + " } }  });"
    var str = "function " + itemmain_a + "() {    var str = \"<a  class='" + classname1 + "'  onclick='" + itemmain_a + "()' ";
    if (itemmain_a == "sel_houseforward_a") {
        str += " onmouseover='sel_houseforward_a();' ";
    }
    str += "><span class='" + classname3 + "' id='" + itemmain + "_d' >" + defaultvalue_xz + "</span></a><div class='" + classname2 + "' id='" + itemmain + "_dl' ><ul> ";
    var values = value.split(",")
    for (var i = 0; i < values.length; i++) {
        str += "<li onclick='" + itemmain_l + "(this)' >" + values[i] + "</li> ";
    }
    str += "</ul></div>  \";";
    str += " OnloadData_xz(jQuery(\"#" + itemmain + "\"), str);";
    str += " ChangWord1(jQuery(\"#" + itemcontent + "\"), \"" + itemcontent_c + "\", \"\");   ";
    str += str2 + "}";

    var str1 = "function " + itemmain_l + "(item) {  var str = \"   <a   class='" + classname1 + "' onclick='" + itemmain_a + "()' ";
    if (itemmain_a == "sel_houseforward_a") {
        str1 += " onmouseover='sel_houseforward_a();' ";
    }
    str1 += "><span class='" + classname3 + "' >\" + item.innerHTML + \"</span></a>\"; ";
    if (GiveValueItem != "") {
        str1 += " jQuery(\"#" + GiveValueItem + "\").val(item.innerHTML);";
    }
    str1 += "OnloadData_xz(jQuery(\"#" + itemmain + "\"), str); "
    if (typeof (addItemTitleValue) != "undefined") {


        str1 += "     AddTitleContext();";

    }
    str1 += "  ChangWord2(jQuery(\"#" + itemcontent + "\"));  jQuery(\"#" + itemmain + "_H\").val(item.innerHTML); "
    var str3 = "ChangWord2(jQuery(\"#" + itemcontent + "\"));";
    if (addmethd != "" && typeof (addmethd) != "undefined") {
        str1 += " " + addmethd + ";"
        str3 = " " + addmethd + ";"
    }
    str1 += "};";


    CreateMethods += str + "     " + str1 + "    ";
}


//別墅选择支付方式下拉框
itemEvent_x("zhifufangshidiv_a", "zhifufangshidiv_l", "zhifufangshidiv", "sp_price", "押一付三,押一付二,押一付一,押二付一,半年付,年付,面议", "select_menu", "select_con4", "", "请选择", "押一付三", "sel_PayInfo_bs", "checkprice()");
//別墅选择朝向下拉框
itemEvent_x("sel_houseforward_a", "sel_houseforward_l", "sel_houseforward", "sp_forward", "南北,南,东南,东,西南,北,西,东西,东北,西北", "select_menu mr8 selectwid", "select_con3", "selectspanwid", "请选择", "请选择", "sel_houseforward_bs", "checkhousestatus()");
//別墅选择装修下拉框
//itemEvent_x("sel_houseDecoration_a", "sel_houseDecoration_l", "sel_houseDecoration", "sp_forward", "豪华装修,精装修,中等装修,简单装修,毛坯", "select_menu mr8 selectwid", "select_con2 mr8", "selectspanwid", "请选择", "请选择", "sel_houseDecoration_bs", "checkarea()", "");

//別墅合租性别限制下拉框
itemEvent_x("input_n_str_FORWARD2_a", "input_n_str_FORWARD2_l", "input_n_str_FORWARD2", "sp_hezu", "性别不限,限男生,限女生,限夫妻", "select_menu", "select_con3_105", "", "请选择", "性别不限", "input_n_str_FORWARD2_bs", "CheckValue_lj_New( \"input_n_str_FORWARD_bs,RoomCount_bs,input_n_str_FORWARD2_bs\", \"请选择卧室,请选择几户合租,请选择性别限制\" ,\"sp_hezu\")", "true");
//別墅合租方式下拉框
itemEvent_x("input_n_str_FORWARD_a", "input_n_str_FORWARD_l", "input_n_str_FORWARD", "sp_hezu", "主卧,次卧,床位,单间", "select_menu mr8", "select_con2_new mr8", "", "请选择", "请选择", "input_n_str_FORWARD_bs", "CheckValue_lj_New( \"input_n_str_FORWARD_bs,RoomCount_bs,input_n_str_FORWARD2_bs\", \"请选择卧室,请选择几户合租,请选择性别限制\" ,\"sp_hezu\")", "");
//別墅合租(几户)
itemEvent_x("RoomCount_a", "RoomCount_l", "RoomCount", "sp_hezu", "2,3,4,5,6,7,8,9", "select_menu", "select_con3_new", "", "请选择", "请选择", "RoomCount_bs", "CheckValue_lj_New( \"input_n_str_FORWARD_bs,RoomCount_bs,input_n_str_FORWARD2_bs\", \"请选择卧室,请选择几户合租,请选择性别限制\" ,\"sp_hezu\")", "户");

//商铺有效时间下拉框
itemEvent_x("youxiaoqi_sp_a", "youxiaoqi_sp_l", "youxiaoqi_sp", "youxiaoqiContent_sp", "20,60,7,15,30", "select_menu", "select_con4_90", "", "请选择商铺有效期", "有效期", "youxiaoqi_sp_H");




//商铺支付方式下拉框
itemEvent_x("zhifufangshi_sp_a", "zhifufangshi_sp_l", "zhifufangshi_sp", "zhifufangshiContent_sp", "面议,月付,季付,半年付,年付", "select_menu", "select_con4", "", "请选择支付方式", "支付方式", "zhifufangshi_sp_H");
//商铺类型下拉框
itemEvent_x("shangpuType_a", "shangpuType_l", "shangpuType", "shangpuTypecontent", "住宅底商,商业街商铺,临街门面,写字楼配套底商,购物中心/百货,其他", "select_menu", "select_con4_149", "", "请选商铺类型", "请选择商铺类别", "shangpuType_H");
//写字楼有效期下拉框
itemEvent_x("youxiaoqi_xz_a", "youxiaoqi_xz_l", "youxiaoqi_xz", "youxiaoqi_content_xz", "60,7,15,30", "select_menu", "select_con4_90 cengwid64", "", "请选择有效期", "有效期", "youxiaoqi_xz_H");
// eval("function sayhello_xz(){alert(1)}");
//


eval(CreateMethods);
function ChangWord2(item) {
    item.html("<img width='14' height='14' class='veralM'  src='http://img.soufun.com/secondhouse/image/esfnew/images/delegateandjx/tureicon.gif'>");

}

function OnloadData_xz(item, value) {
    item.html(value);
}

function ChangeType(item, GetvalueItem) {
    var items = document.getElementsByName(item);
    for (var i = 0; i < items.length; i++) {
        if (items[i].checked) {
            jQuery(GetvalueItem).val(items[i].value);
        }
    }
}

function ChangeTypeToCheckBox(item, GetvalueItem) {
    var items = document.getElementsByName(item);
    for (var i = 0; i < items.length; i++) {
        if (items[i].value == GetvalueItem) {
            items[i].checked = true;
            //items[i].setattribute("checked", "checked");

        }
    }
}

function CheckValue_lj_New(items, itemvalues, itemcontext) {
    var items_ = items.split(",");
    var itemvalues_ = itemvalues.split(",");
    for (var i = 0; i < items_.length; i++) {
        if (jQuery("#" + items_[i] + "").val() == "") {
            ChangWord1(jQuery("#" + itemcontext + ""), itemvalues_[i], "red");
            return;
        }
    }

    ChangWord2(jQuery("#" + itemcontext + ""));
    return;
}

//弹出选择装修下拉框
function sel_houseDecoration_a() {
    var str = "<a class='select_menu mr8 selectwid' onclick='sel_houseDecoration_a()' onmouseover='sel_houseDecoration_a()' id='sel_houseDecoration_aid' ><span class='selectspanwid' id='sel_houseDecoration_d' >请选择</span></a><div class='select_con2 mr8' id='sel_houseDecoration_dl' ><ul> <li onclick='sel_houseDecoration_l(this)' >豪华装修</li> <li onclick='sel_houseDecoration_l(this)' >精装修</li> <li onclick='sel_houseDecoration_l(this)' >中等装修</li> <li onclick='sel_houseDecoration_l(this)' >简单装修</li> <li onclick='sel_houseDecoration_l(this)' >毛坯</li> </ul></div> ";
    OnloadData_xz(jQuery("#sel_houseDecoration_id"), str);
    ChangWord1(jQuery("#sp_forward"), "请选择", "");

}

//鼠标移出
//jQuery("#sel_houseDecoration_id").mouseleave(
function sel_houseDecorationLeave() {
    if (jQuery("#sel_houseDecoration_dl").html() != null) {
        jQuery("#sel_houseDecoration_dl").hide();
        if (jQuery("#sel_houseDecoration_bs").val() == "") {
            ChangWord1(jQuery("#sp_forward"), "请选择", "red");
        } else {
            jQuery("#sel_houseDecoration_d").html(jQuery("#sel_houseDecoration_bs").val());
        }
    }
}

//选择装修单击事件
function sel_houseDecoration_l(item) {
    var str = " <a class='select_menu mr8 selectwid' onclick='sel_houseDecoration_a()' onmouseover='sel_houseDecoration_a()' id='sel_houseDecoration_aid' ><span class='selectspanwid' >" + item.innerHTML + "</span></a>";
    jQuery("#sel_houseDecoration_bs").val(item.innerHTML);
    OnloadData_xz(jQuery("#sel_houseDecoration_id"), str);
    AddTitleContext();

    //弹出选择朝向下拉框
    sel_houseforward_a();

    // ChangWord2(jQuery("#sp_forward"));
    jQuery("#sel_houseDecoration_H").val(item.innerHTML);
    checkarea();
}






