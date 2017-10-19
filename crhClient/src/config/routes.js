import Login from '../components/Login.vue'
import NotFound from '../components/404.vue'
import Home from '../home.vue'
import TaskSetting from '../components/task_setting.vue'
import WelcomeSetting from '../components/welcome_setting.vue'
import ClearAssign from '../components/clear_assign.vue'
import task_work_layout from '../components/task_work_layout.vue'
import clean_work_layout from '../components/clean_work_layout.vue'
import task_solid_layout from '../components/task_solid_layout.vue'
import clear_staff from '../components/clear_staff.vue'
import clear_map from '../components/clear_map.vue'
import preview from '../components/preview.vue'


export default
[
	{
		path: '/login',
		component: Login,
		name: '',
		hidden: true
	},
	{
		path: '/404',
		component: NotFound,
		name: '',
		hidden: true
	},

	{
		path: '/home',
		component: Home,
		children: [
			{
				path: '/home/task_setting',
				component: TaskSetting,
				name: '',
			},
			{
				path: '/home/welcome_setting',
				component: WelcomeSetting,
				name: '',
			},
			{
				path: '/home/clear_assign',
				component: ClearAssign,
				name: '',
			},
			{
				path: '/home/task_work_layout',
				component: task_work_layout,
				name: '',
			},
			{
				path: '/home/clear_staff',
				component: clear_staff,
				name: '',
			},
			{
				path: '/home/clear_map',
				component: clear_map,
				name: '',
			},
			{
				path: '/home/clean_work_layout',
				component: clean_work_layout,
				name: '',
			},
			{
				path: '/home/task_solid_layout',
				component: task_solid_layout,
				name: '',
			},
			{
				path: '/home/preview',
				component: preview,
				name: '',
			},

			{path: '/home', redirect: '/home/task_setting'},
		]
	},
	{
		path: '*',
		redirect: '/home',
		hidden: true
	},
]
