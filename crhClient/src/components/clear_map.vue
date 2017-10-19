sd
<template >
    <div  content="zh-CN">
        <!--<el-col class="breadcrumb-container" >-->
        <!--<div class="title" style="margin-left:20px;" >保洁设置 / 保洁人员</div >-->
        <!--</el-col >-->
        <el-col class="well well-lg" style="background-color: white;margin-top: 10px;" >
            <el-form id="uploadForm" >
                <div style="margin-bottom: 10px;font-size: 24px;" >工作场所布局图上传</div >
                <el-row style="margin-top: 20px" >

                   <div class="form-group" style="margin-bottom: 40px" >
                       <div style="float: left" >
                            <input type="file" name="file" @change="onFileChange" style="font-size: 24px;float: left">
                       </div >
                       <div style="float: right;margin-top: 0px;" >
                            <el-button type="primary" @click="onUpload"
                                       :disabled="isDisable" >开始上传
                            </el-button >
                       </div >
                    </div >
                    <div class="panel panel-primary" style="margin-top: 60px;" v-show="imgSrc!=null&&imgSrc!=''" >
                        <!--<div class="panel-heading" >-->
                              <!--<h4 class="panel-title" style="font-size: 20px;" >图片上传预览</h4 >-->
                        <!--</div >-->
                        <div class="panel-body" style="text-align: center;" >
                            <img :src="imgSrc" id="img" class="preImg" >
                        </div >
                    </div >
	                <!--<div style="margin-bottom: 10px;font-size: 18px;" v-show="imgSrc!=null&&imgSrc!=''" >图片上传预览</div >-->
	                <!--<div style="border-color: #48576a;border-width: 1px; border-style: solid;float: left;"-->
	                <!--v-show="imgSrc!=null&&imgSrc!=''" >-->
	                <!--<img :src="imgSrc" id="img" style="margin: 5px; max-width: 1024px;" >-->
	                <!--</div >-->
                </el-row >

            </el-form >
            <el-row style="margin-top: 40px" >
                <div class="panel panel-primary" >
                  <div class="panel-heading" >
                      <h4 class="panel-title" style="font-size: 20px;" >当前使用布局图</h4 >
                  </div >
                  <div class="panel-body" style="text-align: center;" >
                      <img :src="useSrc" class="preImg" >
                  </div >
                </div >
            </el-row >
        </el-col >

    </div >
</template >
<script >
    import Vue from 'vue';
    var _this;
    export default {
	    name: "clear_map",
	    components: {},
	    data () {
		    _this = this;
		    return {
			    userInfo: {},
			    uploadUrl: HOME + "File/uploadDepartmentImage",
			    submitUrl: HOME + "File/renameFile",
			    isError: false,
			    errorMsg: '',
			    department_no: "",
			    imgSrc: "",
			    useSrc: "",
			    isDisable: true,
		    }
	    },

	    methods: {
		    onFileChange(e) {
			    var files = e.target.files || e.dataTransfer.files;
			    if (files.length > 0) {
				    if (isStringEmpty(files[0].name)) {
					    showMessage(_this, '文件为空！', 0);
					    _this.imgSrc = '';
					    _this.isDisable = true;
					    return;
				    }
				    if (files[0].name) {
					    if (files[0].name.toLowerCase().lastIndexOf('.jpg') < 0
							    && files[0].name.toLowerCase().lastIndexOf('.png') < 0) {
						    showMessage(_this, '文件类型错误！', 0);
						    _this.imgSrc = '';
						    _this.isDisable = true;
						    return;
					    } else {
						    _this.isDisable = false;
					    }
				    }
			    }

			    _this.imgSrc = _this.getObjectURL(files[0]);
			    console.log("objUrl = " + _this.imgSrc);
//                    $("#img").attr("src", objUrl);

		    },
		    onUpload()
		    {
			    var formData = new FormData($("#uploadForm")[0]);
			    $.ajax({
				    url: _this.uploadUrl,// 需要链接到服务器地址
				    type: 'POST',
				    data: formData,
				    async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    success: function (data) {
					    _this.useSrc = _this.imgSrc;
					    _this.setImageName(data.info);
				    },
				    error: function (data) {
					    showMessage(_this, '上传失败！', 0);
				    }
			    });
		    },

		    setImageName(oldFile)
		    {
			    $.ajax({
				    url: _this.submitUrl,
				    type: 'POST',
				    dataType: 'json',
				    data: {
					    oldFile: oldFile,
					    newFile: _this.department_no + '.jpg',
				    },
				    success: function (data) {
					    _this.$alert('上传成功！', '提示', {
						    confirmButtonText: '确定',
						    callback: function () {
							    window.location.reload();
						    },
					    });
					    _this.imgSrc = "";
				    },
				    error: function (data) {
					    showDialog(_this, '上传失败！', 0);
					    _this.imgSrc = "";
				    }
			    })
		    },

		    getObjectURL (file) {
			    var url = null;
			    if (window.createObjectURL != undefined) { // basic
				    url = window.createObjectURL(file);
			    } else if (window.URL != undefined) { // mozilla(firefox)
				    url = window.URL.createObjectURL(file);
			    } else if (window.webkitURL != undefined) { // webkit or chrome
				    url = window.webkitURL.createObjectURL(file);
			    }
			    return url;
		    },
	    },

	    filters: {
		    filterDepartName(no) {
			    if (no == _this.userInfo.department_no) {
				    return _this.userInfo.department_name;
			    }
			    return "";
		    },
	    },

	    created: function () {
		    this.userInfo = JSON.parse(sessionStorage.getItem('user'));
		    _this.department_no = this.userInfo.department_no;
		    _this.useSrc = Image_URL + _this.department_no + ".jpg";
	    }
    }

</script >
<style lang="scss" scoped >
.preImg {
	margin: 5px;
	max-width: 1366px;
	border-color: #48576a;
	border-width: 1px;
	border-style: solid;
	padding: 5px;
}
</style >