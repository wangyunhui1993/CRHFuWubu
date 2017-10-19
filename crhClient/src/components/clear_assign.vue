<template >
    <div class="bg" :style="styleObject" >
        <div style="margin: 5px; height: 30px;" >
            <div class="form-group" style="float: right;" >
                <button type="button" class="btn btn-default" style="width: 100px; "
                        v-on:click="onSave" >保存
                </button >
            </div >
            <div class="form-group" >
                <button type="button" class="btn btn-default" style="width: 100px; "
                        v-on:click="onExit" >退出
                </button >
            </div >
        </div >
        <div id="container" >
        </div >
    </div >
</template >
<script >
    import Vue from 'vue'
    var _this;
    var stage;
    var TITLEHEIGHT = 40; //the title tasks height;
    export default {
	    name: "clear_assign",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    submitURL: HOME + "CsClearStaff/modifyItems",
			    getDataURL: HOME + "CsClearStaff/getRecord",
			    canvas_width: 0,
			    canvas_height: 0,
			    cleanWorkers: [],
			    styleObject: {},
			    isLoaded: false,
		    }
	    },
	    methods: {
		    loadData: function () {
			    $.ajax({
				    url: _this.getDataURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {
					    department_no: this.userInfo.department_no
				    },
				    success: function (data) {
					    if (data.status) {
						    _this.cleanWorkers = data.info;
						    if (_this.cleanWorkers.length > 0) {
							    _this.canvas_width = _this.cleanWorkers[0].canvas_width;
							    _this.canvas_height = _this.cleanWorkers[0].canvas_height;
							    sessionStorage.removeItem('clear_assign_data');
							    _this.initCanvas();
							    _this.isLoaded = true;
						    }
					    }
				    },
				    error: function (info) {
					    showMessage(_this, '服务器访问出错', 0);
				    }
			    });

		    },
		    onSave: function () {
			    _this.canvas_width = stage.attrs.width;
			    _this.canvas_height = stage.attrs.height;
			    var userLayer = stage.children[0];
			    for (var i = 0; i < userLayer.children.length; i++) {
				    var userLabel = userLayer.children[i];
				    for (var j = 0; j < _this.cleanWorkers.length; j++) {
					    _this.cleanWorkers[j].canvas_width = _this.canvas_width;
					    _this.cleanWorkers[j].canvas_height = _this.canvas_height;
					    if (_this.cleanWorkers[j].ui_id == userLabel._id) {
						    _this.cleanWorkers[j].point_x = userLabel.attrs.x;
						    _this.cleanWorkers[j].point_y = userLabel.attrs.y;
						    break;
					    }
				    }
			    }
			    $.ajax({
				    url: _this.submitURL,
				    type: 'POST',
				    dataType: 'json',
				    data: {
					    data: _this.cleanWorkers,
					    canvas_width: _this.canvas_width,
					    canvas_height: _this.canvas_height,
					    department_no: _this.userInfo.department_no
				    },
				    success: function (data) {
					    if (data.status) {
						    showMessage(_this, '保存成功', 1);
					    }
				    },
				    error: function (info) {
					    showMessage(_this, '服务器访问出错', 0);
				    }
			    });

		    },
		    onExit: function () {
			    exitFullScreen();
			    _this.$router.push('/home');

		    },

		    initCanvas: function () {
			    var uiData = JSON.parse(sessionStorage.getItem('clear_assign_data'));
			    if (uiData != null) {
				    _this.canvas_width = uiData.canvas_width;
				    _this.canvas_height = uiData.canvas_height;
				    _this.cleanWorkers = uiData.cleanWorkers;
			    }
			    var width = window.innerWidth;
			    var height = window.innerHeight - TITLEHEIGHT;
			    i
			    stage = new Konva.Stage({
				    container: 'container',
				    width: width,
				    height: height,
			    });
			    var layer = new Konva.Layer();

			    if (_this.canvas_width == 0 || _this.canvas_height == 0) {
				    _this.canvas_width = width;
				    _this.canvas_height = height;
			    }
			    var xrate = width / _this.canvas_width;
			    var yrate = height / _this.canvas_height;

			    for (var i = 0; i < _this.cleanWorkers.length; i++) {
				    var pointX = _this.cleanWorkers[i].point_x * xrate;
				    var pointY = _this.cleanWorkers[i].point_y * yrate;
				    if (pointX == 0 || pointY == 0) {//init
					    pointX = 100;
					    pointY = 100 + i * 60;
					    if (pointY > height - 60) {
						    pointX += 60;
						    pointY = 100 + i * 60;
					    }
				    }
				    var userLabel = _this.getLabel(_this.cleanWorkers[i].name, {
					    x: pointX,
					    y: pointY,
				    });

				    _this.cleanWorkers[i].ui_id = userLabel._id;
				    layer.add(userLabel);
			    }
			    stage.add(layer);
			    window.addEventListener('resize', _this.resizeStage);
			    _this.canvas_width = width;
			    _this.canvas_height = height;

			    _this.saveToSession();
		    },
		    getLabel: function (lableName, point) {
			    var userLabel = new Konva.Label({
				    width: 80,
				    height: 40,
				    x: point.x,
				    y: point.y,
				    opacity: 0.9,
				    draggable: true,

			    });
			    var box = new Konva.Rect({
				    width: 70,
				    height: 30,
				    fill: '#ffbf00',
				    stroke: '#00394d',
				    strokeWidth: 1,
			    });
			    userLabel.add(box);
			    userLabel.add(new Konva.Text({
				    text: lableName,
				    fontFamily: 'Calibri',
				    fontSize: 18,
				    padding: 5,
				    margin: 5,

				    fill: 'black',
			    }));

			    userLabel.on('dragmove', function () {
				    var mousePos = stage.getPointerPosition();
				    if (userLabel.attrs.x <= -5) {
					    userLabel.attrs.x = 5;
				    }
				    if (userLabel.attrs.y <= -5) {
					    userLabel.attrs.y = 5;
				    }
				    if (userLabel.attrs.x >= stage.attrs.width - userLabel.attrs.width + 5) {
					    userLabel.attrs.x = stage.attrs.width - userLabel.attrs.width + 5;
				    }
				    if (userLabel.attrs.y >= stage.attrs.height - userLabel.attrs.height + 5) {
					    userLabel.attrs.y = stage.attrs.height - userLabel.attrs.height + 5;
				    }
				    console.log('dragmove');
			    });
			    userLabel.on('dragend', function () {
//				    var mousePos = stage.getPointerPosition();
//				    var x = mousePos.x;
//				    var y = mousePos.y;
//				    console.log('x: ' + x + ', y: ' + y);
				    console.log('label.x: ' + userLabel.attrs.x + ', label.y: ' + userLabel.attrs.y);
				    for (var i = 0; i < _this.cleanWorkers.length; i++) {
					    if (_this.cleanWorkers[i].ui_id == userLabel._id) {
						    _this.cleanWorkers[i].point_x = userLabel.attrs.x;
						    _this.cleanWorkers[i].point_y = userLabel.attrs.y;
						    break;
					    }
				    }
				    _this.saveToSession();

			    });
			    userLabel.on('mouseover', function () {
				    document.body.style.cursor = 'pointer';
			    });
			    userLabel.on('mouseout', function () {
				    document.body.style.cursor = 'default';
			    });
			    return userLabel;
		    },

		    saveToSession: function () {
			    sessionStorage.setItem('clear_assign_data', JSON.stringify({
				    canvas_width: _this.canvas_width,
				    canvas_height: _this.canvas_height,
				    cleanWorkers: _this.cleanWorkers,
			    }));
		    },
		    resizeStage: function () {
//			    stage.attrs.width = width;
//			    stage.attrs.height = height;
//			    stage.bufferHitCanvas.width = width;
//			    stage.bufferHitCanvas.height = height;
//			    stage.bufferCanvas.width = width;
//			    stage.bufferCanvas.height = height;
//			    stage.attrs.container.width = width;
//			    stage.attrs.container.height = height;
			    if (_this.isLoaded == true) {
				    stage.removeChildren();
				    window.removeEventListener('resize', _this.resizeStage);
				    _this.initCanvas(true);
				    console.log("resizeStage");
			    }
		    }
	    },

	    mounted: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    var bgImgae = Image_URL + this.userInfo.department_no + ".jpg";
		    _this.styleObject = {
			    'background-image': 'url(' + bgImgae + ')',
		    }
		    _this.loadData();
	    },
	    destroyed: function () {
		    stage.removeChildren();
		    sessionStorage.removeItem('clear_assign_data');
	    }
    }

</script >
<style lang="scss" scoped >
    .bg {
	    position: absolute;
	    top: 0px;
	    bottom: 0px;
	    margin: 0px;
	    padding: 0px;
	    width: 100%;
	    height: 100%;
	    /*background-image: url('../assets/img/workerlayout.jpg');*/
	    filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
	    -moz-background-size: 100% 100%;
	    background-size: 100% 100%;
	    /*background-attachment: fixed;*/
	    -webkit-font-smoothing: antialiased;
    }

</style >