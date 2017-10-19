<template >
    <div class="bg_work_layout" :style="styleObject" >
        <div style="margin: 5px; height: 30px;" >

        </div >
        <div id="container" ></div >
    </div >
</template >

<script >
    import Vue from 'vue'
    var _this;
    var stage;
    var TITLEHEIGHT = 40; //the title tasks height;
    var timerInterval;
    export default {
	    name: "work_layout",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
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
                                sessionStorage.removeItem('work_layout_data');
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

		    initCanvas: function (isSizeChanged) {
			    var uiData = JSON.parse(sessionStorage.getItem('work_layout_data'));
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
				    draggable: false,

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

            var defaultTime = 20;
            if(JSON.parse(sessionStorage.getItem('loop_time'))) {
                defaultTime = JSON.parse(sessionStorage.getItem('loop_time'));
            }
            var auto = checkAutoDisplay(location.href);
            if( auto ) {
                timerInterval = setInterval(function switchScreen() {
                    _this.$router.push({path:"/home/task_solid_layout?auto=1"});
                }, defaultTime*1000);//定时器
            }
	    },
	    destroyed: function () {
            stage.removeChildren();
		    sessionStorage.removeItem('work_layout_data');
            clearInterval(timerInterval);
	    }
    }

</script >
<style lang="scss" scoped >
    .bg_work_layout {
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