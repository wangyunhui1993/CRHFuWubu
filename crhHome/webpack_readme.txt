1.nodejs 官网下载nodejs安装包
2.打开cmd窗口.
3.执行命令 npm install -g cnpm
4.执行命令 cnpm install -g webpack (安装webpack)
5.执行命令 cnpm install -g webpack -dev-server (安装webpack)
6.执行命令 cnpm install vue-cli -g (安装vue工具)


7.执行命令 vue init webpack-simple (初始化vue-webpack工程)

配置首页要调用的端口号服务（工程下的package.json的文件）
"dev": "cross-env NODE_ENV=development webpack-dev-server --open --hot --port 8080",

接下来启动webpack 
npm install
npm run dev  //启动webpack服务，可以开始
----------------------------------------------------------------------------------------------------------
npm rebuild node-sass --force


