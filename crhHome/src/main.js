import Vue from 'vue'
import App from './App.vue'
import Element from 'element-ui'
import 'element-ui/lib/theme-default/index.css'
// import VueResource from 'vue-resource'
// Vue.use(VueResource)
Vue.use(Element)
// 引用路由
import VueRouter from 'vue-router'
// 光引用不成，还得使用

Vue.use(VueRouter)
// 引用路由配置文件
import routes from './config/routes'
// 使用配置文件规则
const router = new VueRouter({
  routes
})

router.beforeEach((to, from, next) => {
    //NProgress.start();
    if (to.path == '/login') {
        sessionStorage.removeItem('user');
    }
    let user = JSON.parse(sessionStorage.getItem('user'));
    if (!user && to.path != '/login') {
        next({ path: '/login' })
    } else {
        if(to.path == '/login' || to.path == '/404' || to.path == '/no_permission'
            || to.path == '/home' || to.path == '//home/task'
            || to.path == '/home/statistics' || to.path == '/home/basic_data'|| to.path == '/home/system') {
            next()
        } else {
            if(user != null && user.rolebs_scope != null){
                if(user.rolebs_scope.indexOf(to.path) != -1) {
                    next()
                } else {
                    next({ path: '/no_permission' })
                }

            } else {
                next({ path: '/no_permission' })
            }
        }
        next()
    }
})
new Vue({
  router,
  el: '#app',
  render: h => h(App)
})
