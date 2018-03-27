import Login from '../components/Login.vue'
import NotFound from '../components/404.vue'
import NoPermission from '../components/no_permission.vue'
import Home from "../components/home.vue"
import Task from "../components/task.vue"
import StatisticsQuery from "../components/statistics.vue"
import Data from "../components/basic_data.vue"
import System from "../components/system.vue"
//task
import AddTask from "../components/task/add_task.vue"
import ManageTask from "../components/task/manage_task.vue"
import TaskOperate from "../components/task/task_operate.vue"
import TrainData from "../components/task/train_data.vue"
import Statistics from "../components/task/statistics.vue"
import StatisticsManage from "../components/task/statistics_manage.vue"
import FilterDustStatistics from "../components/task/filter_dust_statistics.vue"
import FilterDustStatisticsManage from "../components/task/filter_dust_statistics_manage.vue"
import FilerElementStatistics from "../components/task/filter_element_statistics.vue"
import FilerElementStatisticsManage from "../components/task/filter_element_statistics_manage.vue"
import CoolerMaintainStatistics from "../components/task/cooler_maintain_statistics.vue"
import CoolerMaintainStatisticsManage from "../components/task/cooler_maintain_statistics_manage.vue"
//statistics Query
import CleanSummary from "../components/statistics/clean_summary.vue"
import CleanQuery from "../components/statistics/clean_query.vue"
import TaskStatistics from "../components/statistics/task_statistics.vue"
import TrainLWSummary from "../components/statistics/train_lw_summary.vue"
import LWCleanStatistics from "../components/statistics/lw_clean_statistics.vue"
import FilterElementQuery from "../components/statistics/filter_element_query_statistics.vue"
import CoolerMaintainQuery from "../components/statistics/cooler_maintain_query_statistics.vue"

//basic data
import TrainStyle from "../components/basic_data/train_style.vue"
import GuDao from "../components/basic_data/gudao.vue"
import XiuCheng from "../components/basic_data/xiucheng.vue"
import TrainNum from "../components/basic_data/train_num.vue"
import TaskContent from "../components/basic_data/task_content.vue"
import TaskPort from "../components/basic_data/port.vue"
import Maintain from "../components/basic_data/maintain.vue"
import StatusReport from "../components/basic_data/status_report.vue"
//system
import PartManage from "../components/system/part_manage.vue"
import UserManage from "../components/system/user_manage.vue"
import WorkGroupManage from "../components/system/work_group_manage.vue"
import TaskGroupManage from "../components/system/task_group_manage.vue"
import RoleManage from "../components/system/role_manage.vue"

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
            path: '/no_permission',
            component: NoPermission,
            name: '',
            hidden: true
        },
        {
            path: '/home',
            component: Home,
            children: [
                {
                    path: '/home/task',
                    component: Task,
                    name: 'task',
                    children: [
                        { path: '/home/task/add_task', component: AddTask, name: 'add_task', meta:'添加作业计划'},
                        { path: '/home/task/manage_task', component: ManageTask, name: 'manage_task',meta:'作业计划管理' },
                        { path: '/home/task/task_operate', component: TaskOperate, name: 'task_operate',meta:'作业操作'},
                        { path: '/home/task/train_data', component: TrainData, name: 'train_data',meta:'一车一档查询' },
                        { path: '/home/task/filter_statistics', component: Statistics, name: 'filter_statistics',meta:'滤网布工作量统计' },
                        { path: '/home/task/filter_statistics_manage', component: StatisticsManage, name: 'filter_statistics_manage',meta:'滤网布统计管理' },
                        { path: '/home/task/filter_dust_statistics', component: FilterDustStatistics, name: 'filter_dust_statistics',meta:'滤尘网工作量统计' },
                        { path: '/home/task/filter_dust_statistics_manage', component: FilterDustStatisticsManage, name: 'filter_dust_statistics_manage',meta:'滤尘网统计管理' },
                        { path: '/home/task/filter_element_statistics', component: FilerElementStatistics, name: 'filter_element_statistics',meta:'滤芯清洗工作量统计' },
                        { path: '/home/task/filter_element_statistics_manage', component: FilerElementStatisticsManage, name: 'filter_element_statistics_manage',meta:'滤芯清洗统计管理' },
                        { path: '/home/task/cooler_maintain_statistics', component: CoolerMaintainStatistics, name: 'cooler_maintain_statistics',meta:'散热设备工作量统计' },
                        { path: '/home/task/cooler_maintain_statistics_manage', component: CoolerMaintainStatisticsManage, name: 'cooler_maintain_statistics_manage',meta:'散热设备统计管理' },

                    ],
                    meta:"作业管理"
                },
                {
                    path: '/home/statistics',
                    component: StatisticsQuery,
                    name: 'statistics',
                    children: [
                        { path: '/home/statistics/clean_summary', component: CleanSummary, name: 'clean_summary', meta:'保洁吸污汇总'},
                        { path: '/home/statistics/clean_query', component: CleanQuery, name: 'clean_query',meta:'保洁吸污查询' },
                        { path: '/home/statistics/task_statistics', component: TaskStatistics, name: 'task_statistics',meta:'作业内容统计'},
                        { path: '/home/statistics/train_lw_summary', component: TrainLWSummary, name: 'train_lw_summary',meta:'滤网布清洗统计' },
                        { path: '/home/statistics/lw_clean_statistics', component:LWCleanStatistics, name: 'lw_clean_statistics',meta:'滤尘网清洗统计' },
                        { path: '/home/statistics/filter_element_query_statistics', component: FilterElementQuery, name: 'filter_element_query_statistics',meta:'滤芯清洗统计' },
                        { path: '/home/statistics/cooler_maintain_query_statistics', component:CoolerMaintainQuery, name: 'cooler_maintain_query_statistics',meta:'散热设备统计' },
                    ],
                    meta:"统计查询"
                },
                {
                    path: '/home/basic_data',
                    component: Data,
                    name: 'basic_data',
                    children: [
                        { path: '/home/basic_data/train_style', component: TrainStyle, name: 'train_style',meta:'车型管理' },
                        { path: '/home/basic_data/gudao', component: GuDao, name: 'gudao',meta:'股道管理' },
                        { path: '/home/basic_data/xiucheng', component: XiuCheng, name: 'xiucheng',meta:'修程管理' },
                        { path: '/home/basic_data/train_num', component: TrainNum, name: 'train_num', meta:'车列号管理'},
                        { path: '/home/basic_data/task_port', component: TaskPort, name: 'task_port',meta:'作业端名称' },
                        { path: '/home/basic_data/task_content', component: TaskContent, name: 'task_content',meta:'作业内容' },
                        //{ path: '/home/basic_data/maintain', component: Maintain, name: 'maintain',meta:'故障维护' },
                        //{ path: '/home/basic_data/status_report', component: StatusReport, name: 'status_report',meta:'情况说明' }
                    ],
                    meta:"基础数据"
                },
                { path: '/home/system',
                    component: System,
                    name: 'system',
                    children: [
                        { path: '/home/system/part_manage', component: PartManage, name: 'part_manage', meta:'部门管理'},
                        { path: '/home/system/work_group_manage', component: WorkGroupManage, name: 'work_group_manage',meta:'班组管理' },
                        { path: '/home/system/task_group_manage', component: TaskGroupManage, name: 'task_group_manage',meta:'作业小组管理' },
                        { path: '/home/system/user_manage', component: UserManage, name: 'user_manage', meta:'用户管理' },
                        { path: '/home/system/role_manage', component: RoleManage, name: 'role_manage',meta:'角色管理' },
                    ],
                    meta:"系统管理"
                },
                { path: '/home', redirect: '/home/task' },
            ],
        },
        // {
        //     path: '/work',
        //     component: Work
        // },
        // {
        //     path: '/search',
        //     component: Search
        // },
        // {
        //     path: '/data',
        //     component: Data
        // },
        // {
        //     path: '/system',
        //     component: System
        // },
        {
            path: '*',
            redirect: '/home',
            hidden: true
        }
	]
