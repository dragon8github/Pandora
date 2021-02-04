::el-time::
::el-date::
Var =
(
import {  DatePicker } from 'element-ui'
Vue.component(DatePicker.name, DatePicker)

<template>
<el-date-picker v-model="time" type="date" placeholder="选择日期"> </el-date-picker>
</template>

<script>

const dateYYYYMMDDHHmmss =  t => {
    const date = new Date(t)
    const year = date.getFullYear()
    const month = date.getMonth() + 1
    const day = date.getDate()
    const hours = date.getHours()
    const minu = date.getMinutes()
    const second = date.getSeconds()
    const arr = [month, day, hours, minu, second].map((item, index) => item < 10 ? '0' + item : item)
    return year + '-' + arr[0] + '-' + arr[1] + ' ' + arr[2] + ':' + arr[3] + ':' + arr[4]
}

export default {
  data() {
    return {
          time: dateYYYYMM(),
      }
  },
  watch: {
      time: {
          async handler(newV, oldV) {
              this.time = newV ? dateYYYYMM(newV) : dateYYYYMM()
          }
      }
  },
}
</script>
---
<div class="header__report">
    <el-date-picker class='header__report--picker' v-model="reportDay" :picker-options="pickerOptionsDay" ref='selectDay'></el-date-picker>
    <a class='header__report--day' :class='{"is-active": reportType === "day"}' @click='switchReportType("day")' v-if="isShowDay">日报 {{ reportDay }}</a>
    <el-date-picker class='header__report--picker' v-model="reportMonth" :picker-options="pickerOptionsMonth" ref='selectMonth' type="month"></el-date-picker>
    <a class='header__report--month' :class='{"is-active": reportType === "month" || reportType === "range"  }' @click='switchReportType("month")'>月报 {{ reportType === "month" ? reportMonth : reportType === "range" ? `${reportMonth[0]} 至 ${reportMonth[1]}` : '' }}</a>
</div>

data() {
    return {
        // 日报限制
        pickerOptionsDay: {
            // 传入的时间，表示所有的时间单位，你要分别对他们进行对比，如果返回true就禁止，返回false就正常。
            disabledDate(time) {
                // 当前时间
                const date = new Date()
                // 获取当天
                const today = new Date().getTime()
                // 不能选择未来的日期，并且一定要2018年之后。
                return time.getTime() >= today  || time.getTime() < new Date(2018, 0, 1).getTime()
            },
        },
        // 月报限制
        pickerOptionsMonth: {
            // 传入的时间，表示所有的时间单位，你要分别对他们进行对比，如果返回true就禁止，返回false就正常。
            disabledDate(time) {
                // 当前时间
                const date = new Date()
                // 获取当月
                const today = new Date(moment().subtract(1, 'month')).getTime()
                // 本月第一天
                const monthFirstDay = new Date(date.getFullYear(), date.getMonth(), 1)
                // 根据业务的需求，如果今天是1号的话，那就只能选上个月的，而且绝对不能选未来的。
                if (today === 1) {
                    return time.getTime() > monthFirstDay.getTime()
                    // 根据业务需求，只有2018年1月开始到这个月,并且依然不能选择未来的月份。
                } else {
                    return time.getTime() >= today || time.getTime() < new Date(2018, 0, 1).getTime()
                }
            },
            shortcuts
        },
    }
},


// 获取半年，
export const shortcuts = (function(){
    let ary = [{
        text: '第一季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const start = new Date(`${year}/01/01`);
            const end = new Date(`${year}/03/31`);

            // 获取当前的时间
            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}的数据`)
            }

            picker.$emit('pick', [start, end]);
        }
    }, {
        text: '第二季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const quarter = moment(`${year}0401`).format()
            // 获取当前的时间
            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}的数据`)
            }
            
            if (now > quarter) {
                const start = new Date(`${year}/04/01`);
                const end = new Date(`${year}/06/30`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}年的数据`)
            }
        }
    }, {
        text: '第三季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const quarter = moment(`${year}0701`).format()
            // 获取当前的时间
            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}的数据`)
            }
            
            if (now > quarter) {
                const start = new Date(`${year}/07/01`);
                const end = new Date(`${year}/09/30`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}年的数据`)
            }
        }
    }, {
        text: '第四季度',
        onClick(picker) {
            const year = moment(picker.date).year()
            const quarter = moment(`${year}1001`).format()
            // 获取当前的时间
            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}年的数据`)
            }
            
            if (now > quarter) {
                const start = new Date(`${year}/10/01`);
                const end = new Date(`${year}/12/31`);
                picker.$emit('pick', [start, end]);
            } else {
                return Message(`未找到 ${year}年第4季度的数据`)
            }
        }
    }, {
        text: '近三个月',
        onClick(picker) {
            // 三个月前的月初
            const threeMonthsAgo = moment().subtract(2, 'month').format('YYYY/MM/01')
            // 转换为date类型
            const start = new Date(threeMonthsAgo)
            // 当天
            const end = moment()._d

            // 获取当前的时间
            const year = moment(picker.date).year()
            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}年的数据`)
            }

            picker.$emit('pick', [start, end])
        }
    },{
        text: '上半年',
        onClick(picker) {
            // 选择的年限
            const year = moment(picker.date).year()
            // 选择的上半年左边界
            const secondHalf = moment(`${year}0615`).format()

            // 获取当前的时间
            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}上半年的数据`)
            }

            // 只有当前时间大于选择的时间，才允许选择上半年
            if (+new Date(now) > +new Date(secondHalf)) {
                const start = new Date(`${year}/01/01`)
                const end = new Date(`${year}/06/30`)
                picker.$emit('pick', [start, end])
            // 否则，只允许选择极限月份
            } else {
                const start = new Date(`${year}/01/01`)
                picker.$emit('pick', [start, now])
            }
        }
    }, {
        text: '下半年',
        onClick(picker) {
            // 选择的年限
            const year = moment(picker.date).year()
            // 选择的下半年左边界
            const secondHalf = moment(`${year}0615`).format()
            // 获取当前的时间
            const now = moment().format()

            // 如果当前时间还不到半年，说明还不能选
            if (+new Date(secondHalf) > +new Date(now)) {
                return Message(`未找到 ${year}下半年的数据`)
            } else {
                const start = new Date(`${year}/7/1`)
                // const end = new Date(`${year}/12/31`)
                // picker.$emit('pick', [start, end])
                picker.$emit('pick', [start, now])
            }
        }
    }, {
        text: '一年',
        onClick(picker) {
            const year = moment(picker.date).year()
            const month = moment().month() + 1
            const day = moment().endOf('month').format('DD')
            const start = new Date(`${year}/01/01`)

            const now = moment().format()
            // fixbug: 如果选择年份大于今年年份，那么取消
            if ((new Date(now)).getFullYear() < year) {
                return Message(`未找到 ${year}年的数据`)
            }

            // 如果选择的年小于当前年，那么就是全年，否则就是直到这个月
            const end = year < moment().year() ? new Date(`${year}/12/31`) : new Date(`${year}/${month}/${day}`);
            picker.$emit('pick', [start, end]);
        }
    }]

    return ary
}());
)
txtit(Var)
return

::el-color::
Var =
(
<el-color-picker v-model="master.option.backgroundColor" @change='changeHandler' @active-change='activeChange' show-alpha></el-color-picker>
---
activeChange (v) {
  this.master.option.backgroundColor = v
},
changeHandler (v) {
  // 点击了 『清空』
  if (v === null) {
    this.master.option.backgroundColor = 'rgba(255, 255, 255, 0.8)'
  }
}
)
txtit(Var)
Return

::countot::
::count-to::
::countto::
Var =
(
import countTo from 'vue-count-to';


<countTo :startVal='0' :endVal="65491" :duration="1500" class="total-num"></countTo>

<CountTo class='item__number' :endVal='maybe(_ => _data_20201229100[0].data[0].DIAGNOSE, 0)'></CountTo>
)
txtit(Var)
return

::el-search::
Var =
(
<template>
	<div>
      <!-- search -->
      <el-input class='l-field__value u-mt-3 u-mb-3' v-model='search' placeholder="请输入搜索内容"></el-input>

      <!-- 表格 -->
      <el-table border 
                ref="multipleTable" 
                :data="myTable" 
                :highlight-current-row="true" 
                @row-click='openTree'>
      </el-table>

      <!-- 分页 -->
      <el-pagination class='u-tr u-mt-3' 
                     background 
                     @current-change="handleCurrentChange" 
                     :total="selectTables.length" 
                     :page-size="size" 
                     :current-page="currentPage" 
                     layout="total, prev, pager, next, jumper">
      </el-pagination>
	</div>	
</template>
<script>
export default {
	data() {
	  return {
	    // 搜索
	    search: '',
	    // 页码
	    page: 0,
	    // 每页固定10条
	    size: 5,
	    // 当前页码
	    currentPage: 1,
	  }
	},
	computed: {
	  myTable() {
	    // default
	    let _table = this.selectTables
	    // filter
	    if (this.search) {
	      this.page = 0
	      this.currentPage = 1
	      _table = this.selectTables.filter(_ => _.tableSource.toLocaleLowerCase().includes(this.search.toLocaleLowerCase()))
	    }
	    return _table.slice(this.page * this.size, (this.page + 1) * this.size)
	  }
	},
}
</script>

---

<template>
	<div>
		<el-input class='l-field__value' v-model='search' placeholder="请输入搜索内容"></el-input>
		<el-table  :row-class-name="tableRowClassName"></el-table>
	</div>	
</template>

<script>
	export default {
		data() {
		  return {
		    search: '',
		  }
		},
		methods: {
			// 添加禁选样式
			tableRowClassName({row, rowIndex}) {
			  if (!row.tableSource.toLocaleLowerCase().includes(this.search.toLocaleLowerCase())) {
			    return 'u-hide'
			  } else if (row.existScheduleFlag == 1 && this.rawTables.find(_ => _.tableSource == row.tableSource) == null) {
			    return 'disabled'
			  }
			  return ''
			},
		}
	}
</script>


)
txtit(Var)
return

::el-page::
::el-pages::
Var =
(
<el-pagination
  @size-change="handleSizeChange"
  @current-change="handleCurrentChange"
  :current-page="currentPage4"
  :page-sizes="[100, 200, 300, 400]"
  :page-size="100"
  layout="total, sizes, prev, pager, next, jumper"
  :total="400">
</el-pagination>

---

<script>
  export default {
    methods: {
      handleSizeChange(val) {
        console.log(``每页 ${val} 条``);
      },
      handleCurrentChange(val) {
        console.log(``当前页: ${val}``);
      }
    },
    data() {
      return {
        currentPage1: 5,
        currentPage2: 5,
        currentPage3: 5,
        currentPage4: 4
      };
    }
  }
</script>
)
txtit(Var)
return

::el-form::
Var =
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
    <!-- element -->
    <script src='https://cdn.staticfile.org/element-ui/2.10.1/index.js'></script>
    <link href="https://cdn.staticfile.org/element-ui/2.10.1/theme-chalk/index.css" rel="stylesheet">
    <!-- axios -->
    <script src="https://libs.cdnjs.net/axios/0.19.2/axios.min.js"></script>
</head>

<body>
    <div id="app">
        <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
            <el-form-item label="用户年龄" prop="userAge">
                <el-input v-model="ruleForm.userAge"></el-input>
            </el-form-item>

            <el-form-item label="用户名称" prop="userName">
                <el-input v-model="ruleForm.userName"></el-input>
            </el-form-item>


            <el-form-item label="活动性质" prop="hobbyList">
              <el-checkbox-group v-model="ruleForm.hobbyList">
                <el-checkbox label="餐厅线上活动" name="hobbyList"></el-checkbox>
                <el-checkbox label="地推活动" name="hobbyList"></el-checkbox>
                <el-checkbox label="线下主题活动" name="hobbyList"></el-checkbox>
                <el-checkbox label="单纯品牌曝光" name="hobbyList"></el-checkbox>
              </el-checkbox-group>
            </el-form-item>

            <el-form-item>
                <el-button type="primary" @click="submitForm('ruleForm')">立即创建</el-button>
            </el-form-item>
        </el-form>
    </div>
</body>
<script>
var vue = new Vue({
    el: '#app',
    data() {
        return {
            ruleForm: {
                userAge: '',
                userName: '',
                hobbyList: [],
            },
            rules: {
                userAge: [
                    { required: true, message: '请输入年龄' },
                ],
                userName: [
                    { required: false, message: '请输入名称', trigger: 'blur' },
                    { min: 2, max: 4, message: '长度在 2 到 4 个字符', trigger: 'blur' }
                ],
                hobbyList: [
                    { type: 'array', required: false, message: '请至少选择2个活动性质', trigger: 'change' },
                    { 
                        validator (rule, value, callback) {
                            if (value.length < 2) {
                                callback(new Error('请至少选择2个活动性质'))
                            }
                            callback()
                        }
                    }
                ]
            }
        }
    },
    methods: {
        submitForm(formName) {
            this.$refs[formName].validate((valid) => {
                if (valid) {

                    const data = { 
                        userAge: this.ruleForm.userAge, 
                        userName: this.ruleForm.userName || undefined,
                        hobbyList: this.ruleForm.hobbyList.length >= 2 ? this.ruleForm.hobbyList : undefined 
                    }

                    console.log('给后端的数据', data)

                    axios({
                      method: 'post',
                      url: 'http://localhost:8080',
                      data: data,
                    }).then(response => {
                        // ...    
                    })
                }
            })
        }
    }
})
</script>

</html>
)
txtit(Var)
return

::el-form-item::
Var =
(
<el-form-item label="任务名称：" prop="taskName">
   <el-input v-model='form.taskName' class='l-field__value' placeholder="请输入任务名称"></el-input>
</el-form-item>

<el-form-item label="数据库类型：" prop="databaseType">
  <el-select v-model="form.databaseType" placeholder="请输入数据库类型" class='l-field__value'>
     <el-option
       v-for="item in options"
       :key="item.value"
       :label="item.label"
       :value="item.value">
     </el-option>
   </el-select>
</el-form-item>
)
code(Var)
return

:?:el.table::
:?:el-table::
Var =
(
<div class='table'>
    <el-table :data="tableData" border>
            <el-table-column prop="jobName"label="作业名称"></el-table-column> 
            <el-table-column prop="businessHours"label="业务时间"></el-table-column> 
            <el-table-column prop="runningState"label="运行状态"></el-table-column> 
            <el-table-column prop="startTime"label="开始时间"></el-table-column> 
            <el-table-column prop="acquisitionTime"label="采集时间"></el-table-column> 
            <el-table-column prop="duration"label="持续时间"></el-table-column> 
            <el-table-column fixed="right" label="操作" width="100">
              <template slot-scope="scope">
                <el-button @click="go(scope.row)" type="text" size="small">【详情】</el-button>
              </template>
            </el-table-column> 
    </el-table> 
</div>
---
export default {
  data() {
    return {
      tableData: [
        {jobName: '业务服务热点实时对接口', businessHours: '2019/01/02', runningState: '未开始', startTime: '2019/02/11  17:26:44', acquisitionTime: '2019/02/28  17:26:44', duration: '11秒', },
        {jobName: '业务服务热点实时接口', businessHours: '2019/01/02', runningState: '完成', startTime: '2019/02/11  17:26:44', acquisitionTime: '2019/02/28  17:26:44', duration: '24秒', },
        {jobName: '测试子流程作业', businessHours: '2019/01/02', runningState: '失败', startTime: '2019/02/11  17:26:44', acquisitionTime: '2019/02/28  17:26:44', duration: '12秒', },
        {jobName: '业务服务热点实时接口', businessHours: '2019/01/02', runningState: '等待重试', startTime: '2019/02/11  17:26:44', acquisitionTime: '2019/02/28  17:26:44', duration: '暂无', }
      ]
    }
  },
  methods: {
    go(row) {
      console.log(row)
    },
  },
}
---
<style lang="scss">
.table {
  font-size: 14px;


  .el-table thead {
    color: #222;
    text-align: center;

    th {
      background: #e8f5fd;
    }
  }

  .cell {
    text-align: center;
  }
}
</style>
)
txtit(Var)
return


::elbtn::
::el-btn::
::el-button::
Var =
(
<!-- <el-button @click="go(scope.row)" type="text" size="small">【详情】</el-button> -->
<!-- <el-button @click='next' type='primary' :loading="loading2">下一步</el-button> -->
<el-button @click='go' type='primary'>返回</el-button>
)
code(Var)
return


::elinput::
::el-input::
Var =
(
<el-input class='l-field__value' placeholder="请输入作业名称"></el-input>
)
code(Var)
return

::el-select::
Var =
(
<el-select v-model="value" placeholder="请选择" class='u-mt-3'>
   <el-option
     v-for="item in options"
     :key="item.value"
     :label="item.label"
     :value="item.value">
   </el-option>
 </el-select>
 ---
 export default {
  data () {
    return {
      value: '',
      options: [{value: '选项1', label: '黄金糕'}, {value: '选项2', label: '双皮奶'}, {value: '选项3', label: '蚵仔煎'}, {value: '选项4', label: '龙须面'}, {value: '选项5', label: '北京烤鸭'}],
    }
  },
}
</script>
)
txtit(Var)
return

::el-tab::
::el-tabls::
Var =
(
<el-tabs type="border-card">
   <el-tab-pane label="用户管理">用户管理</el-tab-pane>
   <el-tab-pane label="配置管理">配置管理</el-tab-pane>
 </el-tabs>
)
code(Var)
return

::el-tag::
Var =
(
<el-tag class='item'>每周一次</el-tag>
)
code(Var)
return

::el-ca::
Var =
(
<el-cascader
  expand-trigger="hover"
  :options="options"
  v-model="selectedOptions"
  @change="handleChange">
</el-cascader>
---
<script>
export default {
  data() {
    return {
      options: [{value: 'zhinan', label: '指南', children: [{value: 'shejiyuanze', label: '设计原则', children: [{value: 'yizhi', label: '一致'}, {value: 'fankui', label: '反馈'}, {value: 'xiaolv', label: '效率'}, {value: 'kekong', label: '可控'}] }, {value: 'daohang', label: '导航', children: [{value: 'cexiangdaohang', label: '侧向导航'}, {value: 'dingbudaohang', label: '顶部导航'}] }] }, {value: 'zujian', label: '组件', children: [{value: 'basic', label: 'Basic', children: [{value: 'layout', label: 'Layout 布局'}, {value: 'color', label: 'Color 色彩'}, {value: 'typography', label: 'Typography 字体'}, {value: 'icon', label: 'Icon 图标'}, {value: 'button', label: 'Button 按钮'}] }, {value: 'form', label: 'Form', children: [{value: 'radio', label: 'Radio 单选框'}, {value: 'checkbox', label: 'Checkbox 多选框'}, {value: 'input', label: 'Input 输入框'}, {value: 'input-number', label: 'InputNumber 计数器'}, {value: 'select', label: 'Select 选择器'}, {value: 'cascader', label: 'Cascader 级联选择器'}, {value: 'switch', label: 'Switch 开关'}, {value: 'slider', label: 'Slider 滑块'}, {value: 'time-picker', label: 'TimePicker 时间选择器'}, {value: 'date-picker', label: 'DatePicker 日期选择器'}, {value: 'datetime-picker', label: 'DateTimePicker 日期时间选择器'}, {value: 'upload', label: 'Upload 上传'}, {value: 'rate', label: 'Rate 评分'}, {value: 'form', label: 'Form 表单'}] }, {value: 'data', label: 'Data', children: [{value: 'table', label: 'Table 表格'}, {value: 'tag', label: 'Tag 标签'}, {value: 'progress', label: 'Progress 进度条'}, {value: 'tree', label: 'Tree 树形控件'}, {value: 'pagination', label: 'Pagination 分页'}, {value: 'badge', label: 'Badge 标记'}] }, {value: 'notice', label: 'Notice', children: [{value: 'alert', label: 'Alert 警告'}, {value: 'loading', label: 'Loading 加载'}, {value: 'message', label: 'Message 消息提示'}, {value: 'message-box', label: 'MessageBox 弹框'}, {value: 'notification', label: 'Notification 通知'}] }, {value: 'navigation', label: 'Navigation', children: [{value: 'menu', label: 'NavMenu 导航菜单'}, {value: 'tabs', label: 'Tabs 标签页'}, {value: 'breadcrumb', label: 'Breadcrumb 面包屑'}, {value: 'dropdown', label: 'Dropdown 下拉菜单'}, {value: 'steps', label: 'Steps 步骤条'}] }, {value: 'others', label: 'Others', children: [{value: 'dialog', label: 'Dialog 对话框'}, {value: 'tooltip', label: 'Tooltip 文字提示'}, {value: 'popover', label: 'Popover 弹出框'}, {value: 'card', label: 'Card 卡片'}, {value: 'carousel', label: 'Carousel 走马灯'}, {value: 'collapse', label: 'Collapse 折叠面板'}] }] }, {value: 'ziyuan', label: '资源', children: [{value: 'axure', label: 'Axure Components'}, {value: 'sketch', label: 'Sketch Templates'}, {value: 'jiaohu', label: '组件交互文档'}] }], 
      selectedOptions: [],
    };
  },
  methods: {
    handleChange(value) {
      console.log(value);
    }
  }
};
</script>
)
txtit(Var)
return

::el-pop::
Var =
(
<el-popover
  placement="right"
  width="400"
  trigger="click">
  <el-table :data="gridData">
    <el-table-column width="150" property="date" label="日期"></el-table-column>
    <el-table-column width="100" property="name" label="姓名"></el-table-column>
    <el-table-column width="300" property="address" label="地址"></el-table-column>
  </el-table>
  <el-button slot="reference">click 激活</el-button>
</el-popover>
---

<script>
  export default {
    data() {
      return {
        gridData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }]
      };
    }
  };
</script>
)
txtit(Var)
return


::el-tree::
Var =
(
<el-tree
  :data="data3"
  show-checkbox
  node-key="id"
  :default-expanded-keys="[2, 3]"
  :default-checked-keys="[5]">
</el-tree>
---
<script>
  export default {
    data() {
      return {
        data3: [{id: 1, label: '一级 2', children: [{id: 3, label: '二级 2-1', children: [{id: 4, label: '三级 3-1-1'}, {id: 5, label: '三级 3-1-2', disabled: true }] }, {id: 2, label: '二级 2-2', disabled: true, children: [{id: 6, label: '三级 3-2-1'}, {id: 7, label: '三级 3-2-2', disabled: true }] }] }],
      };
    }
  };
</script>
)
txtit(Var)
return


::el.tmp::
::el.template::
::el.scope::
Var =
(
<template slot-scope="scope">
  {{ scope.row.tableComment + scope.row.$index }}
</template>
)
code(Var)
return