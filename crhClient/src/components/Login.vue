<template >
    <div class="bg" >
        <div class="login-container" >

            <h3 class="title" >系统登录</h3 >
            <el-form :model="ruleForm2" :rules="rules2" ref="ruleForm2" label-position="left" label-width="60px" >

                <el-form-item label="账号:" prop="account" >
                    <el-input type="text" v-model="ruleForm2.account" auto-complete="off" placeholder="账号"
                              @change="onChange" ></el-input >
                </el-form-item >
                <el-form-item label="姓名:" prop="name" >
                    <el-input type="text" disabled v-model="ruleForm2.name" auto-complete="off" ></el-input >
                </el-form-item >
                <el-form-item label="密码:" prop="checkPass" >
                    <el-input type="password" v-model="ruleForm2.checkPass" auto-complete="off" placeholder="密码"
                              @focus="onKeyup" ></el-input >
                </el-form-item >
                <div class="alert alert-danger" v-if="isError" style="margin-top: 10px;padding: 5px;" >
                    {{errorMsg}}!
                </div >
                <div style="text-align: center; margin-left: 20px" >
                    <el-button type="primary" style="width:35%;" @click.native.prevent="reset"
                               :loading="logining" >重置
                    </el-button >
                    <el-button type="primary" style="width:35%;" @click.native.prevent="login"
                               :loading="logining" >登录
                    </el-button >
                </div >
            </el-form >
        </div >
    </div >

</template >

<script >
    var _this;
    import "../assets/js/util"
    export default {
	    data() {
		    _this = this;
		    return {
			    logining: false,
			    submitUrl: HOME + "User/ajaxLogin",
			    queryUserUrl: HOME + "User/getRecordsCount",
			    ruleForm2: {
				    account: '',
				    name: "",
				    checkPass: ''
			    },
			    rules2: {},
			    checked: true,
			    isError: false,
			    errorMsg: '',
		    };
	    },
	    methods: {
		    validateForm()
		    {
			    this.errorMsg = '';
			    var iserror = false;
			    if (isStringEmpty(this.ruleForm2.account)) {
				    iserror = true;
				    this.errorMsg = '账号不能为空';
			    }
			    if (!iserror && isStringEmpty(this.ruleForm2.checkPass)) {
				    iserror = true;
				    this.errorMsg = '密码不能为空';
			    }
			    return iserror;
		    },

		    onChange: function () {
			    this.ruleForm2.name = '';
			    this.isError = this.validateForm();
		    },

		    onKeyup: function () {
			    if (isStringEmpty(this.ruleForm2.name) && !isStringEmpty(_this.ruleForm2.account)) {
				    $.ajax({
					    url: this.submitUrl,
					    type: 'POST',
					    dataType: 'json',
					    data: {account: _this.ruleForm2.account},
					    success: function (data) {
						    _this.isError = data.status == 0;
						    if (!_this.isError) {
							    _this.ruleForm2.name = data.info.name;
						    }
						    else {
							    _this.errorMsg = '未找到匹配的姓名！'
						    }
					    },
					    error: function (info) {
						    _this.errorMsg = '服务器访问出错';
						    _this.isError = true;
					    }
				    });
			    }
			    this.isError = this.validateForm();
		    },
		    reset: function () {
			    this.ruleForm2.account = "";
			    this.ruleForm2.name = "";
			    this.ruleForm2.checkPass = "";
		    },


		    login: function () {
			    this.isError = this.validateForm();
			    if (!_this.isError) {
				    $.ajax({
					    url: _this.submitUrl,
					    type: 'POST',
					    dataType: 'json',
					    data: this.ruleForm2,
					    success: function (data) {
						    _this.isError = data.status == 0;
						    if (!_this.isError) {
							    sessionStorage.setItem('user', JSON.stringify(data.info));
							    _this.$router.push("/home");
						    }
						    else {
							    _this.errorMsg = '请输入正确的用户名和密码！'
						    }
					    },
					    error: function (info) {
						    _this.errorMsg = '服务器访问出错';
						    _this.isError = true;
					    }
				    })
			    }
		    },
		    onkeydown: function (e) {
			    var ev = document.all ? window.event : e;
			    if (ev.keyCode == 13) {//enter key
				    _this.login();
			    }

		    },
	    },
	    mounted: function () {
		    window.addEventListener('keydown', _this.onkeydown);
	    },
	    destroyed: function () {
		    console.log("destroyed vue");
		    window.removeEventListener('keydown', _this.onkeydown);

	    },
    }
    //        $(function () {
    //    	    document.onkeydown = function (e) {
    //    		    var ev = document.all ? window.event : e;
    //    		    if (ev.keyCode == 13) {//enter key
    //    			    _this.login();
    //    		    }
    //    	    }
    //        });

</script >

<style lang="scss" scoped >
    .bg {
	    position: absolute;
	    top: 0px;
	    bottom: 0px;
	    width: 100%;
	    /*background: url(assets/bg1.jpg) center !important;
		background-size: cover;*/
	    background-image: url("../assets/img/background.jpg");
	    filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
	    -moz-background-size: 100% 100%;
	    background-size: 100% 100%;
	    background-attachment: fixed;
	    -webkit-font-smoothing: antialiased;
    }

    .login-container {
	    /*box-shadow: 0 0px 8px 0 rgba(0, 0, 0, 0.06), 0 1px 0px 0 rgba(0, 0, 0, 0.02);*/
	    -webkit-border-radius: 5px;
	    border-radius: 5px;
	    -moz-border-radius: 5px;
	    background-clip: padding-box;
	    margin-bottom: 20px;
	    background-color: #F9FAFC;
	    margin: 180px auto;
	    border: 2px solid #8492A6;
	    width: 450px;
	    padding: 35px 35px 15px 35px;
    }

    .title {
	    width: 380px;
	    margin-bottom: 40px;
	    text-align: center;
	    color: #505458;
	    font-weight: bold;
    }
</style >