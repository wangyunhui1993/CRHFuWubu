/**
 * Created by PC-LHF on 2017-02-06.
 */


var EveryPageNum = 20;

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

//Check whether to display automatically
function checkAutoDisplay(url) {
	var result = false;
	if(url.indexOf("?auto") != -1) {
		result = true;
	}
	return  result;
}

function getCurrentDay() {
    var cdata = new Date();
    var DAYS = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
    return DAYS[cdata.getDay()];
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
	var user = JSON.parse(sessionStorage.getItem('user'));
	var obj = JSON.parse(user.rolebs_scope);
	result.push(JSON.stringify(obj.task).split(","));
	result.push(JSON.stringify(obj.statistic).split(","));
	result.push(JSON.stringify(obj.basic).split(","));
	result.push(JSON.stringify(obj.system).split(","));

	if (index == null) {
		//返回全部
		return result;
	} else {
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

function isEmptyArray(data) {	
	return data == null || data.length == 0;
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

function isIE() {
    var agent = navigator.userAgent.toLowerCase() ;

    var regStr_ie = /msie [\d.]+;/gi ;
    //IE
	if (agent.indexOf("msie") > 0) {
        return agent.match(regStr_ie) ;
    }
}

function requestFullScreen() {
	var doc = document.documentElement;
	var i = 0;
	if (doc.requestFullScreen) {//W3C
		doc.requestFullScreen();
	}
	else if (doc.webkitRequestFullScreen) {//Chrome
		doc.webkitRequestFullScreen();
		i = 1;
	}
	else if (doc.msRequestFullscreen) {//IE
		doc.msRequestFullscreen();
		i = 2;
	}
	else if (doc.mozRequestFullScreen) {//firefox
		doc.mozRequestFullScreen();
		i = 3;
	}
	console.log(i);
}


function exitFullScreen() {
	var el = document,
		cfs = el.cancelFullScreen || el.webkitCancelFullScreen || el.mozCancelFullScreen || el.exitFullScreen,
		wscript;

	if (typeof cfs != "undefined" && cfs) {
		cfs.call(el);
		return;
	}

	if (typeof window.ActiveXObject != "undefined") {
		wscript = new ActiveXObject("WScript.Shell");
		if (wscript != null) {
			wscript.SendKeys("{F11}");
		}
	}
}

function saveFile(imgUrl) {
	var oPop = window.open(imgUrl, "", "width=1, height=1, top=5000, left=5000");
	for (; oPop.document.readyState != "complete";) {
		if (oPop.document.readyState == "complete")break;
	}
	oPop.document.execCommand("SaveAs");
	oPop.close();
}

function getFileExtension(filename) {

	var ext=/\.[^\.]+$/.exec(filename);
	return ext;
	var index1 = filename.lastIndexOf(".");
	var index2 = filename.length;
	var extname = filename.substring(index1, index2);//后缀名
	return extname;
}

