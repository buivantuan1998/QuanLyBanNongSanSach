/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#pro  li").on('click', 'a', function () {
        getProduct($(this).attr('class'));
    });
});


function getProduct(id) {
    var params = {};
    params.Id = id;
    $.ajax({
        cache: false,
        url: "/QuanLyBanNongSan/getProduct.htm", // duong dan xư lí dữ liệu, nó tương tự như action của form
        type: 'POST', //  kieu gưi du lieu len GET or POST
        data: params,
        //dataType : 'json', //kieu dữ liệu trả về có thể là html, xml,json,text
        success: function (data) {
            $('#data').html(data);
            console.log("SUCCESS: ", data);
        },
        error: function (e) {
            //console.log("ERROR: ", e);
            //display(e);
        },
        done: function (e) {
            //console.log("DONE");
        }
    });
}

$(document).ready(function (){
    $("#provider li").on('click','a',function (){
        getProductByProvider($(this).attr('class'));
    });
});

function getProductByProvider(id) {
    var params = {};
    params.Id = id;
    $.ajax({
        cache: false,
        url: "/QuanLyBanNongSan/getProductByProvider.htm", // duong dan xư lí dữ liệu, nó tương tự như action của form
        type: 'POST', //  kieu gưi du lieu len GET or POST
        data: params,
        //dataType : 'json', //kieu dữ liệu trả về có thể là html, xml,json,text
        success: function (data) {
            $('#data').html(data);
            console.log("SUCCESS: ", data);
        },
        error: function (e) {
            //console.log("ERROR: ", e);
            //display(e);
        },
        done: function (e) {
            //console.log("DONE");
        }
    });
}

