/**
 * Created by PC-LHF on 2017-02-06.
 */


var EveryPageNum = 20;

// function getParentTrainMode() {
// 	return new Array(
// 		{
// 			value: 0,
// 			text: 'I型车'
// 		},
// 		{
// 			value: 1,
// 			text: 'II型车'
// 		},
// 		{
// 			value: 2,
// 			text: 'III型车'
// 		},
// 		{
// 			value: 3,
// 			text: 'IV型车'
// 		},
// 		{
// 			value: 4,
// 			text: 'V型车'
// 		},
// 		{
// 			value: 5,
// 			text: '动检型车'
// 		}
// 	);
// }

function getTrainModel() {
	return new Array(
		{
			value: 0,
			text: 'CRH1型'
		},
		{
			value: 1,
			text: 'CRH2型'
		},
		{
			value: 2,
			text: 'CRH3型'
		},
		 {
		 	value: 3,
		 	text: 'CRH6'
		 },
		 {
			value: 4,
			text: 'CRH400BF'
		 }
		
		);
}

function getCurrnetMonthDays() {
	var d = new Date();
	var m = parseInt(d.getMonth() + 1);
	var res = new Date(d.getYear(), m, 0);
	return res.getDate();
}

Array.prototype.getMaxValue = function () {

	if (this == null) {
		return 0;
	}
	this.sort(function (a, b) {
		if (typeof(a) != 'number' || typeof(b) != 'number') {
			return 0;
		}
		return b - a;
	});
	return this[0];
}

Array.prototype.getMinValue = function () {

	if (this == null) {
		return 0;
	}
	this.sort(function (a, b) {
		if (typeof(a) != 'number' || typeof(b) != 'number') {
			return 0;
		}
		return a - b;
	});
	return this[0];
}

function isNull(obj) {
	if (typeof (obj) != 'number') {
		return obj == null;
	}
	return false;
}

function isUndefined(obj) {
	return typeof (obj) == "undefined";
}

function numberFormat(numObj, intBit) {
	var val = numObj;
	var str = "";
	var i = 0;
	if (val != "") {
		for (i = 0; i < intBit; i++)
			str = str + "0";
		val = str + val;
		val = val.substring(val.length - intBit, val.length);
	}
	return val;
}
//判断部门编号是不否合法(Format:00x0xx)
function regIsCorrectDep(fData) {
	var reg = new RegExp("^\(0010[0-9]{2})$");
	return reg.test(fData);
}

String.prototype.endsWith = function (str) {
	var reg = new RegExp(str + "$");
	return reg.test(this);
}

function getStatisticsOptions() {
	return new Array(
		{
			value: 1,
			text: '是'
		},
		{
			value: 0,
			text: '否'
		});
}

function getTaskStatus() {
	return [{"name": "未开始", "value": "1"}, {"name": "工作中", "value": "2"}, {
		"name": "已完成",
		"value": "3"
	}, {"name": "计划取消", "value": "4"}]
}

function getTaskContentStatus() {
	return [{"name": "等待作业", "value": "1"}, {"name": "开始作业", "value": "2"}, {"name": "作业结束", "value": "3"}]
}

function getAuthArray(index) {
	var result = [];
	if (index == null) {
		//返回全部
		return result;
	} else {
		var user = JSON.parse(sessionStorage.getItem('user'));
		var obj = JSON.parse(user.rolebs_scope);
		result.push(JSON.stringify(obj.task).split(","));
		result.push(JSON.stringify(obj.statistic).split(","));
		result.push(JSON.stringify(obj.basic).split(","));
		result.push(JSON.stringify(obj.system).split(","));
		return result[index];
	}
}

//验证数据是否改动过
function validateIsDifferent(obj1, obj2) {
	var isDifferent = false;
	for (var i in obj1) {
		var item = obj1[i];
		if (typeof(obj1[item]) == "function") {
			continue;
		}
		else if (typeof(obj1[item]) == "number") {
			if (obj1[item].toString() != obj2[item].toString()) {
				isDifferent = true;
				break;
			}
		}
		else if (obj1[item] != obj2[item]) {
			isDifferent = true;
			break;
		}
	}
	return isDifferent;
}

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
	var reg = new RegExp("^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$");
	return reg.test(fData);
}

//判断手机号是否正确
function regIsPhone(fData) {
	var reg = /^1\d{10}$/;
	return reg.test(fData);
}

function getAudioType(fileName) {
	var voiceExt = fileName.substr(fileName.lastIndexOf(".")).toLowerCase();
	var audioType = "audio/mp3";
	switch (voiceExt) {
		case  ".mp3": {
			audioType = "audio/mp3";
			break;
		}
		case ".wav": {
			audioType = "audio/wav";
			break;
		}
		case ".wma": {
			audioType = "audio/wma";
			break;
		}
		case ".mid":
		case ".midi": {
			audioType = "audio/mid";
			break;
		}
		case ".ogg": {
			audioType = "audio/ogg";
			break;
		}
		default:
			break;
	}
	return audioType;
}


Date.prototype.format = function (format) {
	var o = {
		"M+": this.getMonth() + 1, //month
		"d+": this.getDate(),    //day
		"h+": this.getHours(),   //hour
		"m+": this.getMinutes(), //minute
		"s+": this.getSeconds(), //second
		"q+": Math.floor((this.getMonth() + 3) / 3),  //quarter
		"S": this.getMilliseconds() //millisecond
	}
	if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
		(this.getFullYear() + "").substr(4 - RegExp.$1.length));
	for (var k in o)if (new RegExp("(" + k + ")").test(format))
		format = format.replace(RegExp.$1,
			RegExp.$1.length == 1 ? o[k] :
				("00" + o[k]).substr(("" + o[k]).length));
	return format;
}

//返回一个对象的副本，以免直接赋值，引起对象引用问题
//深浅赋值
/*
 var y = $.extend({}, x),          //shallow copy
 z = $.extend(true, {}, x);    //deep copy

 y.b.f === x.b.f       // true
 z.b.f === x.b.f       // false
 */
function copyObject(item) {
	return $.extend(true, {}, item);
}

function copyObjectByJSON(obj) {
	return JSON.parse(JSON.stringify(obj));
}

//success/warning/info/error
function showMessage(obj, msg, msgType) {

	var dialogType = 'success';
	switch (msgType) {
		case 0:
			dialogType = 'error';
			break;
		case 1:
			dialogType = 'success';
			break;
		case 2:
			dialogType = 'warning';
			break;
		case 3:
			dialogType = 'info';
			break;
	}
	var dialog = obj.$notify({
		showClose: true,
		message: msg,
		type: dialogType,
	});
}

function showNotify(obj, msg, msgType) {
	var dialogType = 'success';
	switch (msgType) {
		case 0:
			dialogType = 'error';
			break;
		case 1:
			dialogType = 'success';
			break;
		case 2:
			dialogType = 'warning';
			break;
		case 3:
			dialogType = 'info';
			break;
	}
	obj.$notify({
		title: '消息通知',
		message: msg,
		type: dialogType
	});
}

function downloadFile(document, url) {
	try {
		var elemIF = document.createElement("iframe");
		elemIF.src = url;
		elemIF.style.display = "none";
		document.body.appendChild(elemIF);
	} catch (e) {
		console.log(e);
		return e;
	}
	return true;
}

function generateQuickGuid() {
    return Math.random().toString(36).substring(2, 15) +
        Math.random().toString(36).substring(2, 15);
}
//判断当前浏览类型
function BrowserType()
{
	var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
	var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
	var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
	var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器
	var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器
	var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //判断是否Safari浏览器
	var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1; //判断Chrome浏览器

	if (isIE) 
	{
		var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
		reIE.test(userAgent);
		var fIEVersion = parseFloat(RegExp["$1"]);
		if(fIEVersion == 7)
		{ return "IE7";}
		else if(fIEVersion == 8)
		{ return "IE8";}
		else if(fIEVersion == 9)
		{ return "IE9";}
		else if(fIEVersion == 10)
		{ return "IE10";}
		else if(fIEVersion == 11)
		{ return "IE11";}
		else
		{ return "0"}//IE版本过低
	}//isIE end
	
	if (isFF) {  return "FF";}
	if (isOpera) {  return "Opera";}
	if (isSafari) {  return "Safari";}
	if (isChrome) { return "Chrome";}
	if (isEdge) { return "Edge";}
}//myBrowser() end