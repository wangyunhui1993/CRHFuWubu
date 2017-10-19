/**
 * Created by PC
 */


function isInteger(obj) {
    return (obj | 0) === obj;
}

function isStringEmpty(data) {

    if (data == null)
        return true;
    return data.replace(/(^s*)|(s*$)/g, "").length == 0;
}

//验证Email是否正确
function regIsEmail(fData) {
    var reg =  new RegExp("^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$");
    return reg.test(fData);
}

//判断手机号是否正确
function regIsPhone(fData) {
    var reg =  /^1\d{10}$/;
    return reg.test(fData);
}
