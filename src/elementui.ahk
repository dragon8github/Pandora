::el.table::
::el-table::
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
      tableData: [{
        jobName: '业务服务热点实时对接口',
        businessHours: '2019/01/02',
        runningState: '未开始',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '11秒',
      },{
        jobName: '业务服务热点实时接口',
        businessHours: '2019/01/02',
        runningState: '完成',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '24秒',
      },{
        jobName: '测试子流程作业',
        businessHours: '2019/01/02',
        runningState: '失败',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '12秒',
      },{
        jobName: '业务服务热点实时接口',
        businessHours: '2019/01/02',
        runningState: '等待重试',
        startTime: '2019/02/11  17:26:44',
        acquisitionTime: '2019/02/28  17:26:44',
        duration: '暂无',
      }]
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
        options: [{
          value: '选项1',
          label: '黄金糕'
        }, {
          value: '选项2',
          label: '双皮奶'
        }, {
          value: '选项3',
          label: '蚵仔煎'
        }, {
          value: '选项4',
          label: '龙须面'
        }, {
          value: '选项5',
          label: '北京烤鸭'
        }],
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